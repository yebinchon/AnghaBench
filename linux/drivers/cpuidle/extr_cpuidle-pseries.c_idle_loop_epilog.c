
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ idle; int wait_state_cycles; } ;


 int SPRN_PURR ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 TYPE_1__* get_lppaca () ;
 unsigned long mfspr (int ) ;
 int ppc64_runlatch_on () ;

__attribute__((used)) static inline void idle_loop_epilog(unsigned long in_purr)
{
 u64 wait_cycles;

 wait_cycles = be64_to_cpu(get_lppaca()->wait_state_cycles);
 wait_cycles += mfspr(SPRN_PURR) - in_purr;
 get_lppaca()->wait_state_cycles = cpu_to_be64(wait_cycles);
 get_lppaca()->idle = 0;

 ppc64_runlatch_on();
}
