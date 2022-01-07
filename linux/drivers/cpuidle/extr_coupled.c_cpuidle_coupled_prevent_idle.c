
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int prevent; } ;


 int cpu_relax () ;
 int cpuidle_coupled_no_cpus_waiting (struct cpuidle_coupled*) ;
 int cpuidle_coupled_poke_others (int,struct cpuidle_coupled*) ;
 int get_cpu () ;
 int put_cpu () ;

__attribute__((used)) static void cpuidle_coupled_prevent_idle(struct cpuidle_coupled *coupled)
{
 int cpu = get_cpu();


 coupled->prevent++;
 cpuidle_coupled_poke_others(cpu, coupled);
 put_cpu();
 while (!cpuidle_coupled_no_cpus_waiting(coupled))
  cpu_relax();
}
