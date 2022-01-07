
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; } ;
struct cache_entry {int ce_mode; int ce_flags; int name; } ;


 int CE_ENTRY_CHANGED ;
 int CE_UPDATE_IN_BASE ;
 int S_ISREG (int) ;
 int cache_tree_invalidate_path (struct index_state*,int ) ;
 int mark_fsmonitor_invalid (struct index_state*,struct cache_entry*) ;

int chmod_index_entry(struct index_state *istate, struct cache_entry *ce,
        char flip)
{
 if (!S_ISREG(ce->ce_mode))
  return -1;
 switch (flip) {
 case '+':
  ce->ce_mode |= 0111;
  break;
 case '-':
  ce->ce_mode &= ~0111;
  break;
 default:
  return -2;
 }
 cache_tree_invalidate_path(istate, ce->name);
 ce->ce_flags |= CE_UPDATE_IN_BASE;
 mark_fsmonitor_invalid(istate, ce);
 istate->cache_changed |= CE_ENTRY_CHANGED;

 return 0;
}
