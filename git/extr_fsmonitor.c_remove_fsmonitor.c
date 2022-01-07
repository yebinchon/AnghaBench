
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {scalar_t__ fsmonitor_last_update; int cache_changed; } ;


 int FSMONITOR_CHANGED ;
 int trace_fsmonitor ;
 int trace_printf_key (int *,char*) ;

void remove_fsmonitor(struct index_state *istate)
{
 if (istate->fsmonitor_last_update) {
  trace_printf_key(&trace_fsmonitor, "remove fsmonitor");
  istate->cache_changed |= FSMONITOR_CHANGED;
  istate->fsmonitor_last_update = 0;
 }
}
