
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 int index_name_pos (struct index_state*,char const*,int ) ;
 int strlen (char const*) ;
 int trace_fsmonitor ;
 int trace_printf_key (int *,char*,char const*) ;
 int untracked_cache_invalidate_path (struct index_state*,char const*,int ) ;

__attribute__((used)) static void fsmonitor_refresh_callback(struct index_state *istate, const char *name)
{
 int pos = index_name_pos(istate, name, strlen(name));

 if (pos >= 0) {
  struct cache_entry *ce = istate->cache[pos];
  ce->ce_flags &= ~CE_FSMONITOR_VALID;
 }





 trace_printf_key(&trace_fsmonitor, "fsmonitor_refresh_callback '%s'", name);
 untracked_cache_invalidate_path(istate, name, 0);
}
