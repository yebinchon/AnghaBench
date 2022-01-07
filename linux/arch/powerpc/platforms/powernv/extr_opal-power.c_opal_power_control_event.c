
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct opal_msg {int * params; } ;
struct notifier_block {int dummy; } ;







 unsigned long be64_to_cpu (int ) ;
 int detect_epow () ;
 int orderly_poweroff (int) ;
 int orderly_reboot () ;
 int pr_err (char*,unsigned long) ;
 int pr_info (char*) ;

__attribute__((used)) static int opal_power_control_event(struct notifier_block *nb,
     unsigned long msg_type, void *msg)
{
 uint64_t type;

 switch (msg_type) {
 case 131:
  if (detect_epow()) {
   pr_info("EPOW msg received. Powering off system\n");
   orderly_poweroff(1);
  }
  break;
 case 132:
  pr_info("DPO msg received. Powering off system\n");
  orderly_poweroff(1);
  break;
 case 130:
  type = be64_to_cpu(((struct opal_msg *)msg)->params[0]);
  switch (type) {
  case 128:
   pr_info("Reboot requested\n");
   orderly_reboot();
   break;
  case 129:
   pr_info("Poweroff requested\n");
   orderly_poweroff(1);
   break;
  default:
   pr_err("Unknown power-control type %llu\n", type);
  }
  break;
 default:
  pr_err("Unknown OPAL message type %lu\n", msg_type);
 }

 return 0;
}
