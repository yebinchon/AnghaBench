
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_address; } ;


 int FIXADDR_START ;
 int FIXADDR_TOP ;
 int H_VMEMMAP_START ;
 int IOREMAP_BASE ;
 int IOREMAP_END ;
 int IOREMAP_TOP ;
 int ISA_IO_BASE ;
 int ISA_IO_END ;
 int KASAN_SHADOW_END ;
 int KASAN_SHADOW_START ;
 int LAST_PKMAP ;
 int PAGE_OFFSET ;
 int PHB_IO_BASE ;
 int PHB_IO_END ;
 int PKMAP_ADDR (int ) ;
 int PKMAP_BASE ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 int VMEMMAP_BASE ;
 TYPE_1__* address_markers ;
 int ioremap_bot ;

__attribute__((used)) static void populate_markers(void)
{
 int i = 0;

 address_markers[i++].start_address = PAGE_OFFSET;
 address_markers[i++].start_address = VMALLOC_START;
 address_markers[i++].start_address = VMALLOC_END;
 address_markers[i++].start_address = ioremap_bot;
 address_markers[i++].start_address = IOREMAP_TOP;




 address_markers[i++].start_address = FIXADDR_START;
 address_markers[i++].start_address = FIXADDR_TOP;





}
