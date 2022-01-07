
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlbiel_va_range {unsigned long start; unsigned long end; unsigned long pid; unsigned long page_size; unsigned long psize; int also_pwc; } ;
struct TYPE_2__ {int copros; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cpumask {int dummy; } ;


 int _tlbie_va_range (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ atomic_read (int *) ;
 int do_tlbiel_va_range ;
 struct cpumask* mm_cpumask (struct mm_struct*) ;
 int on_each_cpu_mask (struct cpumask*,int ,struct tlbiel_va_range*,int) ;

__attribute__((used)) static inline void _tlbiel_va_range_multicast(struct mm_struct *mm,
    unsigned long start, unsigned long end,
    unsigned long pid, unsigned long page_size,
    unsigned long psize, bool also_pwc)
{
 struct cpumask *cpus = mm_cpumask(mm);
 struct tlbiel_va_range t = { .start = start, .end = end,
    .pid = pid, .page_size = page_size,
    .psize = psize, .also_pwc = also_pwc };

 on_each_cpu_mask(cpus, do_tlbiel_va_range, &t, 1);
 if (atomic_read(&mm->context.copros) > 0)
  _tlbie_va_range(start, end, pid, page_size, psize, also_pwc);
}
