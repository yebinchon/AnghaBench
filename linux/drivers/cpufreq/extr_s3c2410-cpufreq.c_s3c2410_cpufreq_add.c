
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;


 int s3c2410_cpufreq_info ;
 int s3c_cpufreq_register (int *) ;

__attribute__((used)) static int s3c2410_cpufreq_add(struct device *dev,
          struct subsys_interface *sif)
{
 return s3c_cpufreq_register(&s3c2410_cpufreq_info);
}
