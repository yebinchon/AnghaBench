
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int qcom_boot_secondary (unsigned int,int ) ;
 int scss_release_secondary ;

__attribute__((used)) static int msm8660_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 return qcom_boot_secondary(cpu, scss_release_secondary);
}
