
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; struct ahci_port_priv* private_data; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_em_priv {scalar_t__ blink_policy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* transmit_led_message ) (struct ata_port*,unsigned int,size_t) ;} ;


 int EINVAL ;
 int EM_MAX_SLOTS ;
 unsigned int EM_MSG_LED_PMP_SLOT ;
 unsigned int EM_MSG_LED_VALUE_ACTIVITY ;
 int array_index_nospec (int,int) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int stub1 (struct ata_port*,unsigned int,size_t) ;

__attribute__((used)) static ssize_t ahci_led_store(struct ata_port *ap, const char *buf,
    size_t size)
{
 unsigned int state;
 int pmp;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_em_priv *emp;

 if (kstrtouint(buf, 0, &state) < 0)
  return -EINVAL;


 pmp = (state & EM_MSG_LED_PMP_SLOT) >> 8;
 if (pmp < EM_MAX_SLOTS) {
  pmp = array_index_nospec(pmp, EM_MAX_SLOTS);
  emp = &pp->em_priv[pmp];
 } else {
  return -EINVAL;
 }





 if (emp->blink_policy)
  state &= ~EM_MSG_LED_VALUE_ACTIVITY;

 return ap->ops->transmit_led_message(ap, state, size);
}
