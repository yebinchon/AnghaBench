
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int status; } ;


 int PAGE_SIZE ;
 TYPE_1__ bgrt_tab ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_status(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.status);
}
