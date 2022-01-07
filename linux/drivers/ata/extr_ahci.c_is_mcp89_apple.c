
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; int subsystem_device; } ;


 scalar_t__ PCI_DEVICE_ID_NVIDIA_NFORCE_MCP89_SATA ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;

__attribute__((used)) static bool is_mcp89_apple(struct pci_dev *pdev)
{
 return pdev->vendor == PCI_VENDOR_ID_NVIDIA &&
  pdev->device == PCI_DEVICE_ID_NVIDIA_NFORCE_MCP89_SATA &&
  pdev->subsystem_vendor == PCI_VENDOR_ID_APPLE &&
  pdev->subsystem_device == 0xcb89;
}
