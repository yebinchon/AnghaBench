
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_address; } ;


 int H_VMEMMAP_START ;
 int IOREMAP_BASE ;
 int IOREMAP_END ;
 int ISA_IO_BASE ;
 int ISA_IO_END ;
 int PAGE_OFFSET ;
 int PHB_IO_BASE ;
 int PHB_IO_END ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 TYPE_1__* address_markers ;

__attribute__((used)) static void populate_markers(void)
{
 address_markers[0].start_address = PAGE_OFFSET;
 address_markers[1].start_address = VMALLOC_START;
 address_markers[2].start_address = VMALLOC_END;
 address_markers[3].start_address = ISA_IO_BASE;
 address_markers[4].start_address = ISA_IO_END;
 address_markers[5].start_address = PHB_IO_BASE;
 address_markers[6].start_address = PHB_IO_END;
 address_markers[7].start_address = IOREMAP_BASE;
 address_markers[8].start_address = IOREMAP_END;
 address_markers[9].start_address = H_VMEMMAP_START;
}
