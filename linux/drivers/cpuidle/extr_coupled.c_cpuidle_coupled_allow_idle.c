
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int prevent; } ;


 int cpuidle_coupled_poke_others (int,struct cpuidle_coupled*) ;
 int get_cpu () ;
 int put_cpu () ;
 int smp_wmb () ;

__attribute__((used)) static void cpuidle_coupled_allow_idle(struct cpuidle_coupled *coupled)
{
 int cpu = get_cpu();





 smp_wmb();
 coupled->prevent--;

 cpuidle_coupled_poke_others(cpu, coupled);
 put_cpu();
}
