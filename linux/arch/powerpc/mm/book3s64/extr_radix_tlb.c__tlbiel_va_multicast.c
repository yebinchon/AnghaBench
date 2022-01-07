
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlbiel_va {unsigned long va; unsigned long pid; unsigned long psize; unsigned long ric; } ;
struct TYPE_2__ {int copros; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cpumask {int dummy; } ;


 int RIC_FLUSH_TLB ;
 int _tlbie_va (unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ atomic_read (int *) ;
 int do_tlbiel_va ;
 struct cpumask* mm_cpumask (struct mm_struct*) ;
 int on_each_cpu_mask (struct cpumask*,int ,struct tlbiel_va*,int) ;

__attribute__((used)) static inline void _tlbiel_va_multicast(struct mm_struct *mm,
    unsigned long va, unsigned long pid,
    unsigned long psize, unsigned long ric)
{
 struct cpumask *cpus = mm_cpumask(mm);
 struct tlbiel_va t = { .va = va, .pid = pid, .psize = psize, .ric = ric };
 on_each_cpu_mask(cpus, do_tlbiel_va, &t, 1);
 if (atomic_read(&mm->context.copros) > 0)
  _tlbie_va(va, pid, psize, RIC_FLUSH_TLB);
}
