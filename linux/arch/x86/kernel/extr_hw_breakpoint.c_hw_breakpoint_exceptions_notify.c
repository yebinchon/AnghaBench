
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long DIE_DEBUG ;
 int NOTIFY_DONE ;
 int hw_breakpoint_handler (void*) ;

int hw_breakpoint_exceptions_notify(
  struct notifier_block *unused, unsigned long val, void *data)
{
 if (val != DIE_DEBUG)
  return NOTIFY_DONE;

 return hw_breakpoint_handler(data);
}
