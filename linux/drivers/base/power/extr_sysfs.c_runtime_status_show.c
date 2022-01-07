
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct TYPE_2__ {int runtime_status; scalar_t__ disable_depth; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;
typedef int ssize_t ;


 int EIO ;




 int sprintf (char*,char const*) ;

__attribute__((used)) static ssize_t runtime_status_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 const char *p;

 if (dev->power.runtime_error) {
  p = "error\n";
 } else if (dev->power.disable_depth) {
  p = "unsupported\n";
 } else {
  switch (dev->power.runtime_status) {
  case 129:
   p = "suspended\n";
   break;
  case 128:
   p = "suspending\n";
   break;
  case 130:
   p = "resuming\n";
   break;
  case 131:
   p = "active\n";
   break;
  default:
   return -EIO;
  }
 }
 return sprintf(buf, p);
}
