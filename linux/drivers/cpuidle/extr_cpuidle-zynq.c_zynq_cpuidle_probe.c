
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpuidle_register (int *,int *) ;
 int pr_info (char*) ;
 int zynq_idle_driver ;

__attribute__((used)) static int zynq_cpuidle_probe(struct platform_device *pdev)
{
 pr_info("Xilinx Zynq CpuIdle Driver started\n");

 return cpuidle_register(&zynq_idle_driver, ((void*)0));
}
