
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_device {int dummy; } ;


 int cpufreq_unregister_driver (int *) ;
 int scmi_cpufreq_driver ;

__attribute__((used)) static void scmi_cpufreq_remove(struct scmi_device *sdev)
{
 cpufreq_unregister_driver(&scmi_cpufreq_driver);
}
