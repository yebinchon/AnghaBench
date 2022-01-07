
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lbr_nr; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t branches_show(struct device *cdev,
        struct device_attribute *attr,
        char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", x86_pmu.lbr_nr);
}
