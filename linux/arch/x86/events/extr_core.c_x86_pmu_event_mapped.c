
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {int perf_rdpmc_allowed; } ;
struct mm_struct {TYPE_2__ context; int mmap_sem; } ;


 int PERF_X86_EVENT_RDPMC_ALLOWED ;
 int atomic_inc_return (int *) ;
 int lockdep_assert_held_write (int *) ;
 int mm_cpumask (struct mm_struct*) ;
 int on_each_cpu_mask (int ,int ,int *,int) ;
 int refresh_pce ;

__attribute__((used)) static void x86_pmu_event_mapped(struct perf_event *event, struct mm_struct *mm)
{
 if (!(event->hw.flags & PERF_X86_EVENT_RDPMC_ALLOWED))
  return;
 lockdep_assert_held_write(&mm->mmap_sem);

 if (atomic_inc_return(&mm->context.perf_rdpmc_allowed) == 1)
  on_each_cpu_mask(mm_cpumask(mm), refresh_pce, ((void*)0), 1);
}
