
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlbiel_pid {unsigned long pid; unsigned long ric; } ;
struct TYPE_2__ {int copros; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cpumask {int dummy; } ;


 int RIC_FLUSH_ALL ;
 int _tlbie_pid (unsigned long,int ) ;
 scalar_t__ atomic_read (int *) ;
 int do_tlbiel_pid ;
 struct cpumask* mm_cpumask (struct mm_struct*) ;
 int on_each_cpu_mask (struct cpumask*,int ,struct tlbiel_pid*,int) ;

__attribute__((used)) static inline void _tlbiel_pid_multicast(struct mm_struct *mm,
    unsigned long pid, unsigned long ric)
{
 struct cpumask *cpus = mm_cpumask(mm);
 struct tlbiel_pid t = { .pid = pid, .ric = ric };

 on_each_cpu_mask(cpus, do_tlbiel_pid, &t, 1);





 if (atomic_read(&mm->context.copros) > 0)
  _tlbie_pid(pid, RIC_FLUSH_ALL);
}
