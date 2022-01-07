
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drmem_lmb {int flags; int base_addr; int nid; int drc_index; } ;


 int DRCONF_MEM_ASSIGNED ;
 int EINVAL ;
 int __add_memory (int ,int ,unsigned long) ;
 int __remove_memory (int ,int ,unsigned long) ;
 int dlpar_online_lmb (struct drmem_lmb*) ;
 int dlpar_release_drc (int ) ;
 int invalidate_lmb_associativity_index (struct drmem_lmb*) ;
 int lmb_clear_nid (struct drmem_lmb*) ;
 int lmb_set_nid (struct drmem_lmb*) ;
 unsigned long memory_block_size_bytes () ;
 int update_lmb_associativity_index (struct drmem_lmb*) ;

__attribute__((used)) static int dlpar_add_lmb(struct drmem_lmb *lmb)
{
 unsigned long block_sz;
 int rc;

 if (lmb->flags & DRCONF_MEM_ASSIGNED)
  return -EINVAL;

 rc = update_lmb_associativity_index(lmb);
 if (rc) {
  dlpar_release_drc(lmb->drc_index);
  return rc;
 }

 lmb_set_nid(lmb);
 block_sz = memory_block_size_bytes();


 rc = __add_memory(lmb->nid, lmb->base_addr, block_sz);
 if (rc) {
  invalidate_lmb_associativity_index(lmb);
  return rc;
 }

 rc = dlpar_online_lmb(lmb);
 if (rc) {
  __remove_memory(lmb->nid, lmb->base_addr, block_sz);
  invalidate_lmb_associativity_index(lmb);
  lmb_clear_nid(lmb);
 } else {
  lmb->flags |= DRCONF_MEM_ASSIGNED;
 }

 return rc;
}
