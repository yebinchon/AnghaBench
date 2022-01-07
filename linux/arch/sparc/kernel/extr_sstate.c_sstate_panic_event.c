
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int HV_SOFT_STATE_TRANSITION ;
 int NOTIFY_DONE ;
 int do_set_sstate (int ,int ) ;
 int panicking_msg ;

__attribute__((used)) static int sstate_panic_event(struct notifier_block *n, unsigned long event, void *ptr)
{
 do_set_sstate(HV_SOFT_STATE_TRANSITION, panicking_msg);

 return NOTIFY_DONE;
}
