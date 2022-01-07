
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int removed; int asce; } ;


 int BUG_ON (int) ;
 int _ASCE_ORIGIN ;
 int _ASCE_TYPE_MASK ;




 int __gmap_unshadow_r1t (struct gmap*,int ,unsigned long*) ;
 int __gmap_unshadow_r2t (struct gmap*,int ,unsigned long*) ;
 int __gmap_unshadow_r3t (struct gmap*,int ,unsigned long*) ;
 int __gmap_unshadow_sgt (struct gmap*,int ,unsigned long*) ;
 int gmap_call_notifier (struct gmap*,int ,unsigned long) ;
 int gmap_flush_tlb (struct gmap*) ;
 int gmap_is_shadow (struct gmap*) ;

__attribute__((used)) static void gmap_unshadow(struct gmap *sg)
{
 unsigned long *table;

 BUG_ON(!gmap_is_shadow(sg));
 if (sg->removed)
  return;
 sg->removed = 1;
 gmap_call_notifier(sg, 0, -1UL);
 gmap_flush_tlb(sg);
 table = (unsigned long *)(sg->asce & _ASCE_ORIGIN);
 switch (sg->asce & _ASCE_TYPE_MASK) {
 case 131:
  __gmap_unshadow_r1t(sg, 0, table);
  break;
 case 130:
  __gmap_unshadow_r2t(sg, 0, table);
  break;
 case 129:
  __gmap_unshadow_r3t(sg, 0, table);
  break;
 case 128:
  __gmap_unshadow_sgt(sg, 0, table);
  break;
 }
}
