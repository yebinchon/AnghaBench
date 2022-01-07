
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef int ssize_t ;






 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_cpu_get_polarization (int) ;
 int smp_cpu_state_mutex ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t cpu_polarization_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 int cpu = dev->id;
 ssize_t count;

 mutex_lock(&smp_cpu_state_mutex);
 switch (smp_cpu_get_polarization(cpu)) {
 case 131:
  count = sprintf(buf, "horizontal\n");
  break;
 case 129:
  count = sprintf(buf, "vertical:low\n");
  break;
 case 128:
  count = sprintf(buf, "vertical:medium\n");
  break;
 case 130:
  count = sprintf(buf, "vertical:high\n");
  break;
 default:
  count = sprintf(buf, "unknown\n");
  break;
 }
 mutex_unlock(&smp_cpu_state_mutex);
 return count;
}
