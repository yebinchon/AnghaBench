
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct device {int fwnode; } ;
struct acpi_iort_root_complex {scalar_t__ pci_segment_number; } ;
struct acpi_iort_node {scalar_t__ type; scalar_t__ node_data; } ;
struct acpi_iort_named_component {int device_name; } ;
struct acpi_device {int handle; } ;
struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FULL_PATHNAME ;
 scalar_t__ ACPI_IORT_NODE_NAMED_COMPONENT ;
 scalar_t__ ACPI_IORT_NODE_PCI_ROOT_COMPLEX ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int acpi_os_free (int ) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ pci_domain_nr (struct pci_bus*) ;
 int strcmp (int ,int ) ;
 struct acpi_device* to_acpi_device_node (int ) ;
 struct pci_bus* to_pci_bus (struct device*) ;

__attribute__((used)) static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
         void *context)
{
 struct device *dev = context;
 acpi_status status = AE_NOT_FOUND;

 if (node->type == ACPI_IORT_NODE_NAMED_COMPONENT) {
  struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
  struct acpi_device *adev = to_acpi_device_node(dev->fwnode);
  struct acpi_iort_named_component *ncomp;

  if (!adev)
   goto out;

  status = acpi_get_name(adev->handle, ACPI_FULL_PATHNAME, &buf);
  if (ACPI_FAILURE(status)) {
   dev_warn(dev, "Can't get device full path name\n");
   goto out;
  }

  ncomp = (struct acpi_iort_named_component *)node->node_data;
  status = !strcmp(ncomp->device_name, buf.pointer) ?
       AE_OK : AE_NOT_FOUND;
  acpi_os_free(buf.pointer);
 } else if (node->type == ACPI_IORT_NODE_PCI_ROOT_COMPLEX) {
  struct acpi_iort_root_complex *pci_rc;
  struct pci_bus *bus;

  bus = to_pci_bus(dev);
  pci_rc = (struct acpi_iort_root_complex *)node->node_data;






  status = pci_rc->pci_segment_number == pci_domain_nr(bus) ?
       AE_OK : AE_NOT_FOUND;
 }
out:
 return status;
}
