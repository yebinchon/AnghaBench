
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int offload_at_pkts ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t fast_classifier_get_offload_at_pkts(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return snprintf(buf, (ssize_t)PAGE_SIZE, "%d\n", offload_at_pkts);
}
