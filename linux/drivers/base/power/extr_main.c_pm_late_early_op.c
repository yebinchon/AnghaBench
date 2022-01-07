
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dev_pm_ops {int * restore_early; int * thaw_early; int * poweroff_late; int * freeze_late; int * resume_early; int * suspend_late; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int * pm_callback_t ;
__attribute__((used)) static pm_callback_t pm_late_early_op(const struct dev_pm_ops *ops,
          pm_message_t state)
{
 switch (state.event) {
 }

 return ((void*)0);
}
