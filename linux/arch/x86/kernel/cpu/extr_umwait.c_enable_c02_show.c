
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int READ_ONCE (int ) ;
 int sprintf (char*,char*,int) ;
 int umwait_control_cached ;
 int umwait_ctrl_c02_enabled (int ) ;

__attribute__((used)) static ssize_t
enable_c02_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 u32 ctrl = READ_ONCE(umwait_control_cached);

 return sprintf(buf, "%d\n", umwait_ctrl_c02_enabled(ctrl));
}
