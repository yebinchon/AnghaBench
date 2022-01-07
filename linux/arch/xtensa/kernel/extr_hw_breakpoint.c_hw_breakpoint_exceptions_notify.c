
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;

int hw_breakpoint_exceptions_notify(struct notifier_block *unused,
        unsigned long val, void *data)
{
 return NOTIFY_DONE;
}
