
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpu_management ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_cpu_state_mutex ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dispatching_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 ssize_t count;

 mutex_lock(&smp_cpu_state_mutex);
 count = sprintf(buf, "%d\n", cpu_management);
 mutex_unlock(&smp_cpu_state_mutex);
 return count;
}
