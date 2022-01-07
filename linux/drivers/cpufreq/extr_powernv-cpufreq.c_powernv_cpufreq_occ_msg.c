
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opal_occ_msg {int type; size_t throttle_status; void* chip; } ;
struct opal_msg {int * params; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int restore; size_t throttle_reason; int throttle; int * reason; void* id; } ;



 size_t OCC_MAX_THROTTLE_STATUS ;


 unsigned long OPAL_MSG_OCC ;
 void* be64_to_cpu (int ) ;
 TYPE_1__* chips ;
 int nr_chips ;
 int occ_reset ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int schedule_work (int *) ;
 int throttled ;

__attribute__((used)) static int powernv_cpufreq_occ_msg(struct notifier_block *nb,
       unsigned long msg_type, void *_msg)
{
 struct opal_msg *msg = _msg;
 struct opal_occ_msg omsg;
 int i;

 if (msg_type != OPAL_MSG_OCC)
  return 0;

 omsg.type = be64_to_cpu(msg->params[0]);

 switch (omsg.type) {
 case 129:
  occ_reset = 1;
  pr_info("OCC (On Chip Controller - enforces hard thermal/power limits) Resetting\n");







  if (!throttled) {
   throttled = 1;
   pr_warn("CPU frequency is throttled for duration\n");
  }

  break;
 case 130:
  pr_info("OCC Loading, CPU frequency is throttled until OCC is started\n");
  break;
 case 128:
  omsg.chip = be64_to_cpu(msg->params[1]);
  omsg.throttle_status = be64_to_cpu(msg->params[2]);

  if (occ_reset) {
   occ_reset = 0;
   throttled = 0;
   pr_info("OCC Active, CPU frequency is no longer throttled\n");

   for (i = 0; i < nr_chips; i++) {
    chips[i].restore = 1;
    schedule_work(&chips[i].throttle);
   }

   return 0;
  }

  for (i = 0; i < nr_chips; i++)
   if (chips[i].id == omsg.chip)
    break;

  if (omsg.throttle_status >= 0 &&
      omsg.throttle_status <= OCC_MAX_THROTTLE_STATUS) {
   chips[i].throttle_reason = omsg.throttle_status;
   chips[i].reason[omsg.throttle_status]++;
  }

  if (!omsg.throttle_status)
   chips[i].restore = 1;

  schedule_work(&chips[i].throttle);
 }
 return 0;
}
