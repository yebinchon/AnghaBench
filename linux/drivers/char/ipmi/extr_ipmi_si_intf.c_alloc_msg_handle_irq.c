
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_state; } ;
struct ipmi_smi_msg {int dummy; } ;


 int SI_NORMAL ;
 int disable_si_irq (struct smi_info*) ;
 scalar_t__ enable_si_irq (struct smi_info*) ;
 struct ipmi_smi_msg* ipmi_alloc_smi_msg () ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;

__attribute__((used)) static struct ipmi_smi_msg *alloc_msg_handle_irq(struct smi_info *smi_info)
{
 struct ipmi_smi_msg *msg;

 msg = ipmi_alloc_smi_msg();
 if (!msg) {
  if (!disable_si_irq(smi_info))
   smi_info->si_state = SI_NORMAL;
 } else if (enable_si_irq(smi_info)) {
  ipmi_free_smi_msg(msg);
  msg = ((void*)0);
 }
 return msg;
}
