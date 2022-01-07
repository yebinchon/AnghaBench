
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int last_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct wakeup_source* dev_get_drvdata (struct device*) ;
 int ktime_to_ms (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t last_change_ms_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct wakeup_source *ws = dev_get_drvdata(dev);

 return sprintf(buf, "%lld\n", ktime_to_ms(ws->last_time));
}
