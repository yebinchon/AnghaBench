
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int __boot_write (int ,int) ;
 int wake_flag ;

__attribute__((used)) static void arc_default_smp_cpu_kick(int cpu, unsigned long pc)
{
 BUG_ON(cpu == 0);

 __boot_write(wake_flag, cpu);
}
