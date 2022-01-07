
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int name; int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 scalar_t__ core_fsmonitor ;
 int trace_fsmonitor ;
 int trace_printf_key (int *,char*,int ) ;
 int untracked_cache_invalidate_path (struct index_state*,int ,int) ;

__attribute__((used)) static inline void mark_fsmonitor_invalid(struct index_state *istate, struct cache_entry *ce)
{
 if (core_fsmonitor) {
  ce->ce_flags &= ~CE_FSMONITOR_VALID;
  untracked_cache_invalidate_path(istate, ce->name, 1);
  trace_printf_key(&trace_fsmonitor, "mark_fsmonitor_invalid '%s'", ce->name);
 }
}
