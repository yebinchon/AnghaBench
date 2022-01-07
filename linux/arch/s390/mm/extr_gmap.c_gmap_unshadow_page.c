
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int mm; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 unsigned long _PAGE_INVALID ;
 scalar_t__ _PAGE_SIZE ;
 int gmap_call_notifier (struct gmap*,unsigned long,scalar_t__) ;
 int gmap_is_shadow (struct gmap*) ;
 unsigned long* gmap_table_walk (struct gmap*,unsigned long,int ) ;
 int ptep_unshadow_pte (int ,unsigned long,int *) ;

__attribute__((used)) static void gmap_unshadow_page(struct gmap *sg, unsigned long raddr)
{
 unsigned long *table;

 BUG_ON(!gmap_is_shadow(sg));
 table = gmap_table_walk(sg, raddr, 0);
 if (!table || *table & _PAGE_INVALID)
  return;
 gmap_call_notifier(sg, raddr, raddr + _PAGE_SIZE - 1);
 ptep_unshadow_pte(sg->mm, raddr, (pte_t *) table);
}
