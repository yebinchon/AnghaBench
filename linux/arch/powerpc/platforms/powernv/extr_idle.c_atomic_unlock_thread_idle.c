
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long idle_state; } ;


 int BUG_ON (int) ;
 int NR_PNV_CORE_IDLE_LOCK_BIT ;
 int clear_bit_unlock (int ,unsigned long*) ;
 int cpu_first_thread_sibling (int) ;
 TYPE_1__** paca_ptrs ;
 int raw_smp_processor_id () ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void atomic_unlock_thread_idle(void)
{
 int cpu = raw_smp_processor_id();
 int first = cpu_first_thread_sibling(cpu);
 unsigned long *state = &paca_ptrs[first]->idle_state;

 BUG_ON(!test_bit(NR_PNV_CORE_IDLE_LOCK_BIT, state));
 clear_bit_unlock(NR_PNV_CORE_IDLE_LOCK_BIT, state);
}
