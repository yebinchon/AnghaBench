
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int u8 ;
struct pci_controller {int dummy; } ;



__attribute__((used)) static int
xilinx_pci_exclude_device(struct pci_controller *hose, u_char bus, u8 devfn)
{
 return (bus != 0);
}
