
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {scalar_t__ max_time; int last_time; scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ ktime_t ;


 struct wakeup_source* dev_get_drvdata (struct device*) ;
 int ktime_get () ;
 scalar_t__ ktime_sub (int ,int ) ;
 int ktime_to_ms (scalar_t__) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t max_time_ms_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct wakeup_source *ws = dev_get_drvdata(dev);
 ktime_t active_time;
 ktime_t max_time = ws->max_time;

 if (ws->active) {
  active_time = ktime_sub(ktime_get(), ws->last_time);
  if (active_time > max_time)
   max_time = active_time;
 }
 return sprintf(buf, "%lld\n", ktime_to_ms(max_time));
}
