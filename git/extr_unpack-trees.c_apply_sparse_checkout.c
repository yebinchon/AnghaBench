
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct index_state {int cache_changed; } ;
struct cache_entry {int ce_flags; } ;


 int CE_ENTRY_CHANGED ;
 int CE_NEW_SKIP_WORKTREE ;
 int CE_REMOVE ;
 int CE_SKIP_WORKTREE ;
 int CE_UPDATE ;
 int CE_UPDATE_IN_BASE ;
 int CE_WT_REMOVE ;
 int ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ;
 int ce_skip_worktree (struct cache_entry*) ;
 int mark_fsmonitor_invalid (struct index_state*,struct cache_entry*) ;
 scalar_t__ verify_absent_sparse (struct cache_entry*,int ,struct unpack_trees_options*) ;
 scalar_t__ verify_uptodate_sparse (struct cache_entry*,struct unpack_trees_options*) ;

__attribute__((used)) static int apply_sparse_checkout(struct index_state *istate,
     struct cache_entry *ce,
     struct unpack_trees_options *o)
{
 int was_skip_worktree = ce_skip_worktree(ce);

 if (ce->ce_flags & CE_NEW_SKIP_WORKTREE)
  ce->ce_flags |= CE_SKIP_WORKTREE;
 else
  ce->ce_flags &= ~CE_SKIP_WORKTREE;
 if (was_skip_worktree != ce_skip_worktree(ce)) {
  ce->ce_flags |= CE_UPDATE_IN_BASE;
  mark_fsmonitor_invalid(istate, ce);
  istate->cache_changed |= CE_ENTRY_CHANGED;
 }
 if (was_skip_worktree && ce_skip_worktree(ce)) {
  ce->ce_flags &= ~CE_UPDATE;







  if (ce->ce_flags & CE_REMOVE)
   ce->ce_flags &= ~CE_WT_REMOVE;
 }

 if (!was_skip_worktree && ce_skip_worktree(ce)) {





  if (!(ce->ce_flags & CE_UPDATE) && verify_uptodate_sparse(ce, o))
   return -1;
  ce->ce_flags |= CE_WT_REMOVE;
  ce->ce_flags &= ~CE_UPDATE;
 }
 if (was_skip_worktree && !ce_skip_worktree(ce)) {
  if (verify_absent_sparse(ce, ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, o))
   return -1;
  ce->ce_flags |= CE_UPDATE;
 }
 return 0;
}
