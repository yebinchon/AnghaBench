
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_8__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int ktime_t ;


 int initcall_debug_report (struct device*,int ,int (*) (struct device*,TYPE_1__),int) ;
 int initcall_debug_start (struct device*,int (*) (struct device*,TYPE_1__)) ;
 int suspend_report_result (int (*) (struct device*,TYPE_1__),int) ;
 int trace_device_pm_callback_end (struct device*,int) ;
 int trace_device_pm_callback_start (struct device*,char const*,int ) ;

__attribute__((used)) static int legacy_suspend(struct device *dev, pm_message_t state,
     int (*cb)(struct device *dev, pm_message_t state),
     const char *info)
{
 int error;
 ktime_t calltime;

 calltime = initcall_debug_start(dev, cb);

 trace_device_pm_callback_start(dev, info, state.event);
 error = cb(dev, state);
 trace_device_pm_callback_end(dev, error);
 suspend_report_result(cb, error);

 initcall_debug_report(dev, calltime, cb, error);

 return error;
}
