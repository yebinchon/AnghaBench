
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; int bus; } ;
struct bridge_controller {int dummy; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_3__ {int w_tflush; } ;


 struct bridge_controller* BRIDGE_CONTROLLER (int ) ;
 int BRIDGE_DEV_SWAP_DIR ;
 int PCI_SLOT (int ) ;
 TYPE_2__* b_device ;
 TYPE_1__ b_widget ;
 int bridge_clr (struct bridge_controller*,int ,int ) ;
 int bridge_read (struct bridge_controller*,int ) ;

__attribute__((used)) static void bridge_disable_swapping(struct pci_dev *dev)
{
 struct bridge_controller *bc = BRIDGE_CONTROLLER(dev->bus);
 int slot = PCI_SLOT(dev->devfn);


 bridge_clr(bc, b_device[slot].reg, BRIDGE_DEV_SWAP_DIR);
 bridge_read(bc, b_widget.w_tflush);
}
