
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtol (char const*,int ,long*) ;
 long offload_at_pkts ;

__attribute__((used)) static ssize_t fast_classifier_set_offload_at_pkts(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 long new;
 int ret;

 ret = kstrtol(buf, 0, &new);
 if (ret == -EINVAL || ((int)new != new))
  return -EINVAL;

 offload_at_pkts = new;

 return size;
}
