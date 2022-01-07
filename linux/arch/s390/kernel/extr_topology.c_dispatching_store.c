
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int cpu_management ;
 int get_online_cpus () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;
 int smp_cpu_state_mutex ;
 int sscanf (char const*,char*,int*,char*) ;
 int topology_expect_change () ;
 int topology_set_cpu_management (int) ;

__attribute__((used)) static ssize_t dispatching_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 int val, rc;
 char delim;

 if (sscanf(buf, "%d %c", &val, &delim) != 1)
  return -EINVAL;
 if (val != 0 && val != 1)
  return -EINVAL;
 rc = 0;
 get_online_cpus();
 mutex_lock(&smp_cpu_state_mutex);
 if (cpu_management == val)
  goto out;
 rc = topology_set_cpu_management(val);
 if (rc)
  goto out;
 cpu_management = val;
 topology_expect_change();
out:
 mutex_unlock(&smp_cpu_state_mutex);
 put_online_cpus();
 return rc ? rc : count;
}
