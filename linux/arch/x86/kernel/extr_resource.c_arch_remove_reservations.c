
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;


 int BIOS_ROM_BASE ;
 int BIOS_ROM_END ;
 int IORESOURCE_MEM ;
 int remove_e820_regions (struct resource*) ;
 int resource_clip (struct resource*,int ,int ) ;

void arch_remove_reservations(struct resource *avail)
{





 if (avail->flags & IORESOURCE_MEM) {
  resource_clip(avail, BIOS_ROM_BASE, BIOS_ROM_END);

  remove_e820_regions(avail);
 }
}
