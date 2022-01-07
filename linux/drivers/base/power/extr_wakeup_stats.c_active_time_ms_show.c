
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int last_time; scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int ktime_t ;


 struct wakeup_source* dev_get_drvdata (struct device*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ms (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t active_time_ms_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct wakeup_source *ws = dev_get_drvdata(dev);
 ktime_t active_time =
  ws->active ? ktime_sub(ktime_get(), ws->last_time) : 0;

 return sprintf(buf, "%lld\n", ktime_to_ms(active_time));
}
