
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int skip_to_bridge_ingress ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t fast_classifier_get_skip_bridge_ingress(struct device *dev,
             struct device_attribute *attr,
             char *buf)
{
 return snprintf(buf, (ssize_t)PAGE_SIZE, "%d\n", skip_to_bridge_ingress);
}
