
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 unsigned int CE_MATCH_IGNORE_FSMONITOR ;
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 unsigned int CE_MATCH_IGNORE_VALID ;
 unsigned int CE_MATCH_RACY_IS_DIRTY ;
 int CE_VALID ;
 int DATA_CHANGED ;
 int MODE_CHANGED ;
 int TYPE_CHANGED ;
 scalar_t__ ce_intent_to_add (struct cache_entry const*) ;
 unsigned int ce_match_stat_basic (struct cache_entry const*,struct stat*) ;
 unsigned int ce_modified_check_fs (struct index_state*,struct cache_entry const*,struct stat*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 scalar_t__ is_racy_timestamp (struct index_state*,struct cache_entry const*) ;
 int refresh_fsmonitor (struct index_state*) ;

int ie_match_stat(struct index_state *istate,
    const struct cache_entry *ce, struct stat *st,
    unsigned int options)
{
 unsigned int changed;
 int ignore_valid = options & CE_MATCH_IGNORE_VALID;
 int ignore_skip_worktree = options & CE_MATCH_IGNORE_SKIP_WORKTREE;
 int assume_racy_is_modified = options & CE_MATCH_RACY_IS_DIRTY;
 int ignore_fsmonitor = options & CE_MATCH_IGNORE_FSMONITOR;

 if (!ignore_fsmonitor)
  refresh_fsmonitor(istate);






 if (!ignore_skip_worktree && ce_skip_worktree(ce))
  return 0;
 if (!ignore_valid && (ce->ce_flags & CE_VALID))
  return 0;
 if (!ignore_fsmonitor && (ce->ce_flags & CE_FSMONITOR_VALID))
  return 0;






 if (ce_intent_to_add(ce))
  return DATA_CHANGED | TYPE_CHANGED | MODE_CHANGED;

 changed = ce_match_stat_basic(ce, st);
 if (!changed && is_racy_timestamp(istate, ce)) {
  if (assume_racy_is_modified)
   changed |= DATA_CHANGED;
  else
   changed |= ce_modified_check_fs(istate, ce, st);
 }

 return changed;
}
