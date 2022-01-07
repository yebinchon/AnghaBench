
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int mainbat_voltage; } ;
struct TYPE_4__ {TYPE_1__ battstat; } ;


 TYPE_2__ sharpsl_pm ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t battery_voltage_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", sharpsl_pm.battstat.mainbat_voltage);
}
