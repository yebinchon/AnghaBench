
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int ) ;
 int cpu_callout_mask ;
 int cpu_initialized_mask ;
 int cpu_relax () ;
 int cpumask_test_and_set_cpu (int,int ) ;
 int cpumask_test_cpu (int,int ) ;

__attribute__((used)) static void wait_for_master_cpu(int cpu)
{
}
