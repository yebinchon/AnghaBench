
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap_rmap {unsigned long raddr; } ;
struct gmap {int guest_table_lock; int mm; struct gmap* parent; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 unsigned long PAGE_MASK ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _PAGE_PROTECT ;
 unsigned long _SHADOW_RMAP_PGTABLE ;
 unsigned long __gmap_translate (struct gmap*,unsigned long) ;
 int gmap_insert_rmap (struct gmap*,unsigned long,struct gmap_rmap*) ;
 int gmap_is_shadow (struct gmap*) ;
 int gmap_pte_op_end (int *) ;
 int gmap_pte_op_fixup (struct gmap*,unsigned long,unsigned long,int) ;
 int * gmap_pte_op_walk (struct gmap*,unsigned long,int **) ;
 scalar_t__ gmap_table_walk (struct gmap*,unsigned long,int ) ;
 int kfree (struct gmap_rmap*) ;
 struct gmap_rmap* kzalloc (int,int ) ;
 unsigned long pte_val (int ) ;
 int ptep_shadow_pte (int ,unsigned long,int *,int *,int ) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gmap_shadow_page(struct gmap *sg, unsigned long saddr, pte_t pte)
{
 struct gmap *parent;
 struct gmap_rmap *rmap;
 unsigned long vmaddr, paddr;
 spinlock_t *ptl;
 pte_t *sptep, *tptep;
 int prot;
 int rc;

 BUG_ON(!gmap_is_shadow(sg));
 parent = sg->parent;
 prot = (pte_val(pte) & _PAGE_PROTECT) ? PROT_READ : PROT_WRITE;

 rmap = kzalloc(sizeof(*rmap), GFP_KERNEL);
 if (!rmap)
  return -ENOMEM;
 rmap->raddr = (saddr & PAGE_MASK) | _SHADOW_RMAP_PGTABLE;

 while (1) {
  paddr = pte_val(pte) & PAGE_MASK;
  vmaddr = __gmap_translate(parent, paddr);
  if (IS_ERR_VALUE(vmaddr)) {
   rc = vmaddr;
   break;
  }
  rc = radix_tree_preload(GFP_KERNEL);
  if (rc)
   break;
  rc = -EAGAIN;
  sptep = gmap_pte_op_walk(parent, paddr, &ptl);
  if (sptep) {
   spin_lock(&sg->guest_table_lock);

   tptep = (pte_t *) gmap_table_walk(sg, saddr, 0);
   if (!tptep) {
    spin_unlock(&sg->guest_table_lock);
    gmap_pte_op_end(ptl);
    radix_tree_preload_end();
    break;
   }
   rc = ptep_shadow_pte(sg->mm, saddr, sptep, tptep, pte);
   if (rc > 0) {

    gmap_insert_rmap(sg, vmaddr, rmap);
    rmap = ((void*)0);
    rc = 0;
   }
   gmap_pte_op_end(ptl);
   spin_unlock(&sg->guest_table_lock);
  }
  radix_tree_preload_end();
  if (!rc)
   break;
  rc = gmap_pte_op_fixup(parent, paddr, vmaddr, prot);
  if (rc)
   break;
 }
 kfree(rmap);
 return rc;
}
