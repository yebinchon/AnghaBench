
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int (* pm_callback_t ) (struct device*) ;
typedef int ktime_t ;


 int initcall_debug_report (struct device*,int ,int (*) (struct device*),int) ;
 int initcall_debug_start (struct device*,int (*) (struct device*)) ;
 int pm_dev_dbg (struct device*,TYPE_1__,char const*) ;
 int suspend_report_result (int (*) (struct device*),int) ;
 int trace_device_pm_callback_end (struct device*,int) ;
 int trace_device_pm_callback_start (struct device*,char const*,int ) ;

__attribute__((used)) static int dpm_run_callback(pm_callback_t cb, struct device *dev,
       pm_message_t state, const char *info)
{
 ktime_t calltime;
 int error;

 if (!cb)
  return 0;

 calltime = initcall_debug_start(dev, cb);

 pm_dev_dbg(dev, state, info);
 trace_device_pm_callback_start(dev, info, state.event);
 error = cb(dev);
 trace_device_pm_callback_end(dev, error);
 suspend_report_result(cb, error);

 initcall_debug_report(dev, calltime, cb, error);

 return error;
}
