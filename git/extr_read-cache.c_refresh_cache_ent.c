
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; scalar_t__ ce_namelen; int name; int ce_mode; } ;


 int CE_FSMONITOR_VALID ;
 unsigned int CE_MATCH_IGNORE_FSMONITOR ;
 unsigned int CE_MATCH_IGNORE_MISSING ;
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 unsigned int CE_MATCH_IGNORE_VALID ;
 unsigned int CE_MATCH_REFRESH ;
 int CE_VALID ;
 int EINVAL ;
 int ENOENT ;
 int S_ISGITLINK (int ) ;
 scalar_t__ assume_unchanged ;
 int ce_mark_uptodate (struct cache_entry*) ;
 int ce_namelen (struct cache_entry*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry*) ;
 scalar_t__ ce_uptodate (struct cache_entry*) ;
 int copy_cache_entry (struct cache_entry*,struct cache_entry*) ;
 int errno ;
 int fill_stat_cache_info (struct index_state*,struct cache_entry*,struct stat*) ;
 scalar_t__ has_symlink_leading_path (int ,int ) ;
 int ie_match_stat (struct index_state*,struct cache_entry*,struct stat*,unsigned int) ;
 scalar_t__ ie_modified (struct index_state*,struct cache_entry*,struct stat*,unsigned int) ;
 scalar_t__ lstat (int ,struct stat*) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,int ) ;
 int mark_fsmonitor_valid (struct index_state*,struct cache_entry*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int refresh_fsmonitor (struct index_state*) ;

__attribute__((used)) static struct cache_entry *refresh_cache_ent(struct index_state *istate,
          struct cache_entry *ce,
          unsigned int options, int *err,
          int *changed_ret)
{
 struct stat st;
 struct cache_entry *updated;
 int changed;
 int refresh = options & CE_MATCH_REFRESH;
 int ignore_valid = options & CE_MATCH_IGNORE_VALID;
 int ignore_skip_worktree = options & CE_MATCH_IGNORE_SKIP_WORKTREE;
 int ignore_missing = options & CE_MATCH_IGNORE_MISSING;
 int ignore_fsmonitor = options & CE_MATCH_IGNORE_FSMONITOR;

 if (!refresh || ce_uptodate(ce))
  return ce;

 if (!ignore_fsmonitor)
  refresh_fsmonitor(istate);





 if (!ignore_skip_worktree && ce_skip_worktree(ce)) {
  ce_mark_uptodate(ce);
  return ce;
 }
 if (!ignore_valid && (ce->ce_flags & CE_VALID)) {
  ce_mark_uptodate(ce);
  return ce;
 }
 if (!ignore_fsmonitor && (ce->ce_flags & CE_FSMONITOR_VALID)) {
  ce_mark_uptodate(ce);
  return ce;
 }

 if (has_symlink_leading_path(ce->name, ce_namelen(ce))) {
  if (ignore_missing)
   return ce;
  if (err)
   *err = ENOENT;
  return ((void*)0);
 }

 if (lstat(ce->name, &st) < 0) {
  if (ignore_missing && errno == ENOENT)
   return ce;
  if (err)
   *err = errno;
  return ((void*)0);
 }

 changed = ie_match_stat(istate, ce, &st, options);
 if (changed_ret)
  *changed_ret = changed;
 if (!changed) {







  if (ignore_valid && assume_unchanged &&
      !(ce->ce_flags & CE_VALID))
   ;
  else {





   if (!S_ISGITLINK(ce->ce_mode)) {
    ce_mark_uptodate(ce);
    mark_fsmonitor_valid(istate, ce);
   }
   return ce;
  }
 }

 if (ie_modified(istate, ce, &st, options)) {
  if (err)
   *err = EINVAL;
  return ((void*)0);
 }

 updated = make_empty_cache_entry(istate, ce_namelen(ce));
 copy_cache_entry(updated, ce);
 memcpy(updated->name, ce->name, ce->ce_namelen + 1);
 fill_stat_cache_info(istate, updated, &st);






 if (!ignore_valid && assume_unchanged &&
     !(ce->ce_flags & CE_VALID))
  updated->ce_flags &= ~CE_VALID;


 return updated;
}
