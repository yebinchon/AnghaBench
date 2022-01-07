
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;


 int CE_CONFLICTED ;
 int ce_stage (struct cache_entry*) ;
 int clear_ce_flags (struct index_state*,int,int,struct pattern_list*) ;

__attribute__((used)) static void mark_new_skip_worktree(struct pattern_list *pl,
       struct index_state *istate,
       int select_flag, int skip_wt_flag)
{
 int i;





 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];

  if (select_flag && !(ce->ce_flags & select_flag))
   continue;

  if (!ce_stage(ce) && !(ce->ce_flags & CE_CONFLICTED))
   ce->ce_flags |= skip_wt_flag;
  else
   ce->ce_flags &= ~skip_wt_flag;
 }





 clear_ce_flags(istate, select_flag, skip_wt_flag, pl);
}
