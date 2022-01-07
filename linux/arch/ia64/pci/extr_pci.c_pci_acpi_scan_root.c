
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int node; struct acpi_device* companion; int segment; } ;
struct pci_root_info {TYPE_2__ controller; int common; int io_resources; } ;
struct pci_bus {int dummy; } ;
struct TYPE_3__ {scalar_t__ start; } ;
struct acpi_pci_root {int segment; TYPE_1__ secondary; struct acpi_device* device; } ;
struct acpi_device {int handle; int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_get_node (int ) ;
 struct pci_bus* acpi_pci_root_create (struct acpi_pci_root*,int *,int *,TYPE_2__*) ;
 int dev_err (int *,char*,int ,int) ;
 struct pci_root_info* kzalloc (int,int ) ;
 int pci_acpi_root_ops ;

struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
{
 struct acpi_device *device = root->device;
 struct pci_root_info *info;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  dev_err(&device->dev,
   "pci_bus %04x:%02x: ignored (out of memory)\n",
   root->segment, (int)root->secondary.start);
  return ((void*)0);
 }

 info->controller.segment = root->segment;
 info->controller.companion = device;
 info->controller.node = acpi_get_node(device->handle);
 INIT_LIST_HEAD(&info->io_resources);
 return acpi_pci_root_create(root, &pci_acpi_root_ops,
        &info->common, &info->controller);
}
