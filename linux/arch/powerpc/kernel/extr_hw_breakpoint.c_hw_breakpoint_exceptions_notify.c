
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_DONE ;
 int hw_breakpoint_handler (void*) ;
 int single_step_dabr_instruction (void*) ;

int hw_breakpoint_exceptions_notify(
  struct notifier_block *unused, unsigned long val, void *data)
{
 int ret = NOTIFY_DONE;

 switch (val) {
 case 129:
  ret = hw_breakpoint_handler(data);
  break;
 case 128:
  ret = single_step_dabr_instruction(data);
  break;
 }

 return ret;
}
