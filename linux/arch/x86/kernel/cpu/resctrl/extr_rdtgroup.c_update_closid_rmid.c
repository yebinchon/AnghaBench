
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int dummy; } ;
struct cpumask {int dummy; } ;


 scalar_t__ cpumask_test_cpu (int,struct cpumask const*) ;
 int get_cpu () ;
 int put_cpu () ;
 int smp_call_function_many (struct cpumask const*,int (*) (struct rdtgroup*),struct rdtgroup*,int) ;
 int update_cpu_closid_rmid (struct rdtgroup*) ;

__attribute__((used)) static void
update_closid_rmid(const struct cpumask *cpu_mask, struct rdtgroup *r)
{
 int cpu = get_cpu();

 if (cpumask_test_cpu(cpu, cpu_mask))
  update_cpu_closid_rmid(r);
 smp_call_function_many(cpu_mask, update_cpu_closid_rmid, r, 1);
 put_cpu();
}
