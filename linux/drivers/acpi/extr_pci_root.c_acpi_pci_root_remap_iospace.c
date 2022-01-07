
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_entry {void* offset; struct resource* res; } ;
struct resource {unsigned long start; int flags; void* end; } ;
struct fwnode_handle {int dummy; } ;
typedef void* resource_size_t ;


 int IORESOURCE_DISABLED ;
 unsigned long pci_address_to_pio (void*) ;
 scalar_t__ pci_register_io_range (struct fwnode_handle*,void*,void*) ;
 scalar_t__ pci_remap_iospace (struct resource*,void*) ;
 int pr_info (char*,void**,struct resource*) ;
 void* resource_size (struct resource*) ;

__attribute__((used)) static void acpi_pci_root_remap_iospace(struct fwnode_handle *fwnode,
   struct resource_entry *entry)
{
}
