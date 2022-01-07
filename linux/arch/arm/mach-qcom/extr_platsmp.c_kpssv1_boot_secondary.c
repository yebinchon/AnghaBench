
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int kpssv1_release_secondary ;
 int qcom_boot_secondary (unsigned int,int ) ;

__attribute__((used)) static int kpssv1_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 return qcom_boot_secondary(cpu, kpssv1_release_secondary);
}
