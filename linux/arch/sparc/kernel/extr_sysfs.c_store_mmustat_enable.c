
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 int sscanf (char const*,char*,unsigned long*) ;
 long work_on_cpu (int ,int ,unsigned long*) ;
 int write_mmustat_enable ;

__attribute__((used)) static ssize_t store_mmustat_enable(struct device *s,
   struct device_attribute *attr, const char *buf,
   size_t count)
{
 unsigned long val;
 long err;
 int ret;

 ret = sscanf(buf, "%lu", &val);
 if (ret != 1)
  return -EINVAL;

 err = work_on_cpu(s->id, write_mmustat_enable, &val);
 if (err)
  return -EIO;

 return count;
}
