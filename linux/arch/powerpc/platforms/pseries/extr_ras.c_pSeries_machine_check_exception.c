
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct machine_check_event {scalar_t__ version; } ;


 int MCE_EVENT_RELEASE ;
 scalar_t__ MCE_V1 ;
 int get_mce_event (struct machine_check_event*,int ) ;
 int machine_check_print_event_info (struct machine_check_event*,int ,int) ;
 int pr_err (char*,scalar_t__) ;
 scalar_t__ recover_mce (struct pt_regs*,struct machine_check_event*) ;
 int user_mode (struct pt_regs*) ;

int pSeries_machine_check_exception(struct pt_regs *regs)
{
 struct machine_check_event evt;

 if (!get_mce_event(&evt, MCE_EVENT_RELEASE))
  return 0;


 if (evt.version != MCE_V1) {
  pr_err("Machine Check Exception, Unknown event version %d !\n",
         evt.version);
  return 0;
 }
 machine_check_print_event_info(&evt, user_mode(regs), 0);

 if (recover_mce(regs, &evt))
  return 1;

 return 0;
}
