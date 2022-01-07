
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int BUG_ON (int ) ;
 unsigned long _SEGMENT_ENTRY_INVALID ;
 int gmap_is_shadow (struct gmap*) ;
 unsigned long* gmap_table_walk (struct gmap*,unsigned long,int) ;
 int * pte_alloc_map_lock (int ,int *,unsigned long,int **) ;

__attribute__((used)) static pte_t *gmap_pte_op_walk(struct gmap *gmap, unsigned long gaddr,
          spinlock_t **ptl)
{
 unsigned long *table;

 BUG_ON(gmap_is_shadow(gmap));

 table = gmap_table_walk(gmap, gaddr, 1);
 if (!table || *table & _SEGMENT_ENTRY_INVALID)
  return ((void*)0);
 return pte_alloc_map_lock(gmap->mm, (pmd_t *) table, gaddr, ptl);
}
