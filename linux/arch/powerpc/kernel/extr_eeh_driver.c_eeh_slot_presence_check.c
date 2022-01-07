
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_slot {TYPE_1__* hotplug; } ;
struct pci_dev {scalar_t__ error_state; struct pci_slot* slot; } ;
struct hotplug_slot_ops {int (* get_adapter_status ) (TYPE_1__*,int *) ;int (* set_attention_status ) (TYPE_1__*,int) ;} ;
struct TYPE_3__ {struct hotplug_slot_ops* ops; } ;


 scalar_t__ pci_channel_io_perm_failure ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static bool eeh_slot_presence_check(struct pci_dev *pdev)
{
 const struct hotplug_slot_ops *ops;
 struct pci_slot *slot;
 u8 state;
 int rc;

 if (!pdev)
  return 0;

 if (pdev->error_state == pci_channel_io_perm_failure)
  return 0;

 slot = pdev->slot;
 if (!slot || !slot->hotplug)
  return 1;

 ops = slot->hotplug->ops;
 if (!ops || !ops->get_adapter_status)
  return 1;


 if (ops->set_attention_status)
  ops->set_attention_status(slot->hotplug, 1);

 rc = ops->get_adapter_status(slot->hotplug, &state);
 if (rc)
  return 1;

 return !!state;
}
