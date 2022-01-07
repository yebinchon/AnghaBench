
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int asce; } ;


 scalar_t__ MACHINE_HAS_IDTE ;
 int __tlb_flush_global () ;
 int __tlb_flush_idte (int ) ;

__attribute__((used)) static void gmap_flush_tlb(struct gmap *gmap)
{
 if (MACHINE_HAS_IDTE)
  __tlb_flush_idte(gmap->asce);
 else
  __tlb_flush_global();
}
