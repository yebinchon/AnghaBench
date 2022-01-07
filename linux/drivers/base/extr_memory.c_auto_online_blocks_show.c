
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ memhp_auto_online ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t auto_online_blocks_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 if (memhp_auto_online)
  return sprintf(buf, "online\n");
 else
  return sprintf(buf, "offline\n");
}
