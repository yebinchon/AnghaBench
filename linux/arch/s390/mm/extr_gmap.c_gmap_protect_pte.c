
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int EAGAIN ;
 int ENOMEM ;
 unsigned long GMAP_NOTIFY_MPROT ;
 unsigned long GMAP_NOTIFY_SHADOW ;
 unsigned long PGSTE_IN_BIT ;
 unsigned long PGSTE_VSIE_BIT ;
 int _SEGMENT_ENTRY_INVALID ;
 int gmap_pte_op_end (int *) ;
 int pmd_val (int ) ;
 int * pte_alloc_map_lock (int ,int *,unsigned long,int **) ;
 int ptep_force_prot (int ,unsigned long,int *,int,unsigned long) ;

__attribute__((used)) static int gmap_protect_pte(struct gmap *gmap, unsigned long gaddr,
       pmd_t *pmdp, int prot, unsigned long bits)
{
 int rc;
 pte_t *ptep;
 spinlock_t *ptl = ((void*)0);
 unsigned long pbits = 0;

 if (pmd_val(*pmdp) & _SEGMENT_ENTRY_INVALID)
  return -EAGAIN;

 ptep = pte_alloc_map_lock(gmap->mm, pmdp, gaddr, &ptl);
 if (!ptep)
  return -ENOMEM;

 pbits |= (bits & GMAP_NOTIFY_MPROT) ? PGSTE_IN_BIT : 0;
 pbits |= (bits & GMAP_NOTIFY_SHADOW) ? PGSTE_VSIE_BIT : 0;

 rc = ptep_force_prot(gmap->mm, gaddr, ptep, prot, pbits);
 gmap_pte_op_end(ptl);
 return rc;
}
