
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c2440_cpufreq_interface ;
 int subsys_interface_register (int *) ;

__attribute__((used)) static int s3c2440_cpufreq_init(void)
{
 return subsys_interface_register(&s3c2440_cpufreq_interface);
}
