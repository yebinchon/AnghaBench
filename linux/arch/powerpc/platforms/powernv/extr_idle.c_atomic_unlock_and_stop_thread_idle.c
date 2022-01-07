
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {unsigned long idle_state; } ;


 int BUG_ON (unsigned long) ;
 unsigned long PNV_CORE_IDLE_LOCK_BIT ;
 unsigned long READ_ONCE (unsigned long) ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int cpu_first_thread_sibling (int) ;
 unsigned long cpu_thread_in_core (int) ;
 TYPE_1__** paca_ptrs ;
 int raw_smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void atomic_unlock_and_stop_thread_idle(void)
{
 int cpu = raw_smp_processor_id();
 int first = cpu_first_thread_sibling(cpu);
 unsigned long thread = 1UL << cpu_thread_in_core(cpu);
 unsigned long *state = &paca_ptrs[first]->idle_state;
 u64 s = READ_ONCE(*state);
 u64 new, tmp;

 BUG_ON(!(s & PNV_CORE_IDLE_LOCK_BIT));
 BUG_ON(s & thread);

again:
 new = (s | thread) & ~PNV_CORE_IDLE_LOCK_BIT;
 tmp = cmpxchg(state, s, new);
 if (unlikely(tmp != s)) {
  s = tmp;
  goto again;
 }
}
