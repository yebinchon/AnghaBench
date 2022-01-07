
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; int counter; } ;
struct perf_sched {size_t saved_states; TYPE_1__ state; TYPE_1__* saved; } ;


 int clear_bit (int ,int ) ;

__attribute__((used)) static bool perf_sched_restore_state(struct perf_sched *sched)
{
 if (!sched->saved_states)
  return 0;

 sched->saved_states--;
 sched->state = sched->saved[sched->saved_states];


 clear_bit(sched->state.counter++, sched->state.used);

 return 1;
}
