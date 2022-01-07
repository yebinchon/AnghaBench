
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle; } ;


 int SPRN_PURR ;
 TYPE_1__* get_lppaca () ;
 unsigned long mfspr (int ) ;
 int ppc64_runlatch_off () ;

__attribute__((used)) static inline void idle_loop_prolog(unsigned long *in_purr)
{
 ppc64_runlatch_off();
 *in_purr = mfspr(SPRN_PURR);




 get_lppaca()->idle = 1;
}
