
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pseries_errorlog {scalar_t__ data; } ;
struct epow_errorlog {int sensor_value; int event_modifier; } ;
 int PSERIES_ELOG_SECT_ID_EPOW ;
 int emergency_sync () ;
 struct pseries_errorlog* get_pseries_errorlog (struct rtas_error_log*,int ) ;
 int handle_system_shutdown (int) ;
 int kernel_power_off () ;
 scalar_t__ num_epow_events ;
 int orderly_poweroff (int) ;
 int pr_emerg (char*) ;
 int pr_err (char*,char) ;
 int pr_info (char*) ;

__attribute__((used)) static void rtas_parse_epow_errlog(struct rtas_error_log *log)
{
 struct pseries_errorlog *pseries_log;
 struct epow_errorlog *epow_log;
 char action_code;
 char modifier;

 pseries_log = get_pseries_errorlog(log, PSERIES_ELOG_SECT_ID_EPOW);
 if (pseries_log == ((void*)0))
  return;

 epow_log = (struct epow_errorlog *)pseries_log->data;
 action_code = epow_log->sensor_value & 0xF;
 modifier = epow_log->event_modifier & 0xF;

 switch (action_code) {
 case 132:
  if (num_epow_events) {
   pr_info("Non critical power/cooling issue cleared\n");
   num_epow_events--;
  }
  break;

 case 129:
  pr_info("Non-critical cooling issue detected. Check RTAS error"
   " log for details\n");
  break;

 case 128:
  pr_info("Non-critical power issue detected. Check RTAS error"
   " log for details\n");
  break;

 case 130:
  handle_system_shutdown(epow_log->event_modifier);
  break;

 case 131:
  pr_emerg("Critical power/cooling issue detected. Check RTAS"
    " error log for details. Powering off.\n");
  orderly_poweroff(1);
  break;

 case 134:
 case 133:
  pr_emerg("System about to lose power. Check RTAS error log "
    " for details. Powering off immediately.\n");
  emergency_sync();
  kernel_power_off();
  break;

 default:
  pr_err("Unknown power/cooling event (action code  = %d)\n",
   action_code);
 }


 if (action_code != 132)
  num_epow_events++;
}
