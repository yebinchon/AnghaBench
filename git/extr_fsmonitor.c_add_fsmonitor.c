
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {unsigned int cache_nr; TYPE_2__* untracked; TYPE_1__** cache; int fsmonitor_last_update; int cache_changed; } ;
struct TYPE_4__ {int use_fsmonitor; } ;
struct TYPE_3__ {int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 int FSMONITOR_CHANGED ;
 int add_untracked_cache (struct index_state*) ;
 int getnanotime () ;
 int refresh_fsmonitor (struct index_state*) ;
 int trace_fsmonitor ;
 int trace_printf_key (int *,char*) ;

void add_fsmonitor(struct index_state *istate)
{
 unsigned int i;

 if (!istate->fsmonitor_last_update) {
  trace_printf_key(&trace_fsmonitor, "add fsmonitor");
  istate->cache_changed |= FSMONITOR_CHANGED;
  istate->fsmonitor_last_update = getnanotime();


  for (i = 0; i < istate->cache_nr; i++)
   istate->cache[i]->ce_flags &= ~CE_FSMONITOR_VALID;


  if (istate->untracked) {
   add_untracked_cache(istate);
   istate->untracked->use_fsmonitor = 1;
  }


  refresh_fsmonitor(istate);
 }
}
