
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {TYPE_1__* hotplug; } ;
struct pci_dev {scalar_t__ error_state; struct pci_slot* slot; } ;
struct hotplug_slot_ops {int (* set_attention_status ) (TYPE_1__*,int ) ;} ;
struct TYPE_2__ {struct hotplug_slot_ops* ops; } ;


 scalar_t__ pci_channel_io_perm_failure ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void eeh_clear_slot_attention(struct pci_dev *pdev)
{
 const struct hotplug_slot_ops *ops;
 struct pci_slot *slot;

 if (!pdev)
  return;

 if (pdev->error_state == pci_channel_io_perm_failure)
  return;

 slot = pdev->slot;
 if (!slot || !slot->hotplug)
  return;

 ops = slot->hotplug->ops;
 if (!ops || !ops->set_attention_status)
  return;

 ops->set_attention_status(slot->hotplug, 0);
}
