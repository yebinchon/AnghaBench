
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; } ;
struct cache_entry {int ce_flags; int name; } ;


 int CE_FSMONITOR_VALID ;
 scalar_t__ core_fsmonitor ;
 int trace_fsmonitor ;
 int trace_printf_key (int *,char*,int ) ;

__attribute__((used)) static inline void mark_fsmonitor_valid(struct index_state *istate, struct cache_entry *ce)
{
 if (core_fsmonitor && !(ce->ce_flags & CE_FSMONITOR_VALID)) {
  istate->cache_changed = 1;
  ce->ce_flags |= CE_FSMONITOR_VALID;
  trace_printf_key(&trace_fsmonitor, "mark_fsmonitor_clean '%s'", ce->name);
 }
}
