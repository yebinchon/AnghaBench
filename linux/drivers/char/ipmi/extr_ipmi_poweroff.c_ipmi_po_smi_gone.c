
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_destroy_user (int ) ;
 int ipmi_ifnum ;
 int ipmi_user ;
 int old_poweroff_func ;
 int pm_power_off ;
 scalar_t__ ready ;

__attribute__((used)) static void ipmi_po_smi_gone(int if_num)
{
 if (!ready)
  return;

 if (ipmi_ifnum != if_num)
  return;

 ready = 0;
 ipmi_destroy_user(ipmi_user);
 pm_power_off = old_poweroff_func;
}
