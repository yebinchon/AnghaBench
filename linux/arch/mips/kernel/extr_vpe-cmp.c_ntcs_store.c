
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {unsigned long ntcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int aprp_cpu_index () ;
 struct vpe* get_vpe (int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t ntcs_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct vpe *vpe = get_vpe(aprp_cpu_index());
 unsigned long new;
 int ret;

 ret = kstrtoul(buf, 0, &new);
 if (ret < 0)
  return ret;


 if (new != 1)
  return -EINVAL;

 vpe->ntcs = new;

 return len;
}
