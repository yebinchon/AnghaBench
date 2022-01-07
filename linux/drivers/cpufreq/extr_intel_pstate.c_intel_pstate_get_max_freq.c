
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_freq; int turbo_freq; } ;
struct cpudata {TYPE_1__ pstate; } ;
struct TYPE_4__ {scalar_t__ no_turbo; scalar_t__ turbo_disabled; } ;


 TYPE_2__ global ;

__attribute__((used)) static int intel_pstate_get_max_freq(struct cpudata *cpu)
{
 return global.turbo_disabled || global.no_turbo ?
   cpu->pstate.max_freq : cpu->pstate.turbo_freq;
}
