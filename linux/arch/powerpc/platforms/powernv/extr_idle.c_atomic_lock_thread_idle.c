
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long idle_state; } ;


 int NR_PNV_CORE_IDLE_LOCK_BIT ;
 int barrier () ;
 int cpu_first_thread_sibling (int) ;
 TYPE_1__** paca_ptrs ;
 int raw_smp_processor_id () ;
 int test_and_set_bit_lock (int ,unsigned long*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void atomic_lock_thread_idle(void)
{
 int cpu = raw_smp_processor_id();
 int first = cpu_first_thread_sibling(cpu);
 unsigned long *state = &paca_ptrs[first]->idle_state;

 while (unlikely(test_and_set_bit_lock(NR_PNV_CORE_IDLE_LOCK_BIT, state)))
  barrier();
}
