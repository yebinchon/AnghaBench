
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t lid_wake_mode ;
 char** lid_wake_mode_names ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t lid_wake_mode_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 const char *mode = lid_wake_mode_names[lid_wake_mode];
 return sprintf(buf, "%s\n", mode);
}
