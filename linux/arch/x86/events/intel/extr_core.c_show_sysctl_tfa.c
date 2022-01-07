
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int allow_tsx_force_abort ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t show_sysctl_tfa(struct device *cdev,
         struct device_attribute *attr,
         char *buf)
{
 return snprintf(buf, 40, "%d\n", allow_tsx_force_abort);
}
