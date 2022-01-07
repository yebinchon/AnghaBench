
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dev_pm_ops {int * restore_noirq; int * thaw_noirq; int * poweroff_noirq; int * freeze_noirq; int * resume_noirq; int * suspend_noirq; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int * pm_callback_t ;
__attribute__((used)) static pm_callback_t pm_noirq_op(const struct dev_pm_ops *ops, pm_message_t state)
{
 switch (state.event) {
 }

 return ((void*)0);
}
