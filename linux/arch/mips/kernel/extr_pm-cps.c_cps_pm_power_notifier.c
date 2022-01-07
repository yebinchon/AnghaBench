
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned int CPC_Cx_STAT_CONF_EJTAG_PROBE ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;

 int pr_warn (char*) ;
 unsigned int read_cpc_cl_stat_conf () ;

__attribute__((used)) static int cps_pm_power_notifier(struct notifier_block *this,
     unsigned long event, void *ptr)
{
 unsigned int stat;

 switch (event) {
 case 128:
  stat = read_cpc_cl_stat_conf();
  if (stat & CPC_Cx_STAT_CONF_EJTAG_PROBE) {
   pr_warn("JTAG probe is connected - abort suspend\n");
   return NOTIFY_BAD;
  }
  return NOTIFY_DONE;
 default:
  return NOTIFY_DONE;
 }
}
