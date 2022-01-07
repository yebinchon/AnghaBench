
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int cpumask_t ;


 size_t EINVAL ;
 size_t EIO ;
 int cpu_online_cores_map () ;
 int fastsleep_workaround_applyonce ;
 int get_online_cpus () ;
 scalar_t__ kstrtou8 (char const*,int ,int*) ;
 int on_each_cpu_mask (int *,int ,int*,int) ;
 int pnv_fastsleep_workaround_apply ;
 int power7_fastsleep_workaround_entry ;
 int power7_fastsleep_workaround_exit ;
 int pr_err (char*) ;
 int put_online_cpus () ;

__attribute__((used)) static ssize_t store_fastsleep_workaround_applyonce(struct device *dev,
  struct device_attribute *attr, const char *buf,
  size_t count)
{
 cpumask_t primary_thread_mask;
 int err;
 u8 val;

 if (kstrtou8(buf, 0, &val) || val != 1)
  return -EINVAL;

 if (fastsleep_workaround_applyonce == 1)
  return count;
 power7_fastsleep_workaround_exit = 0;

 get_online_cpus();
 primary_thread_mask = cpu_online_cores_map();
 on_each_cpu_mask(&primary_thread_mask,
    pnv_fastsleep_workaround_apply,
    &err, 1);
 put_online_cpus();
 if (err) {
  pr_err("fastsleep_workaround_applyonce change failed while running pnv_fastsleep_workaround_apply");
  goto fail;
 }

 power7_fastsleep_workaround_entry = 0;

 fastsleep_workaround_applyonce = 1;

 return count;
fail:
 return -EIO;
}
