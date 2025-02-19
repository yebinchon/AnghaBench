
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rename_conflict_info {TYPE_5__* ren1; } ;
struct merge_options {TYPE_4__* repo; TYPE_3__* priv; int branch2; int branch1; } ;
struct diff_filespec {int mode; scalar_t__ path; } ;
struct merge_file_info {int clean; struct diff_filespec const blob; } ;
struct cache_entry {int ce_flags; } ;
struct TYPE_14__ {struct cache_entry** cache; } ;
struct TYPE_13__ {int branch; TYPE_2__* pair; } ;
struct TYPE_12__ {TYPE_6__* index; } ;
struct TYPE_11__ {int call_depth; TYPE_6__ orig_index; } ;
struct TYPE_10__ {TYPE_1__* two; } ;
struct TYPE_9__ {int mode; } ;


 int CE_SKIP_WORKTREE ;
 scalar_t__ S_ISGITLINK (int ) ;
 char* _ (char*) ;
 scalar_t__ add_cacheinfo (struct merge_options*,struct diff_filespec const*,char const*,int ,int,int ) ;
 int assert (int) ;
 scalar_t__ ce_skip_worktree (struct cache_entry*) ;
 scalar_t__ dir_in_way (TYPE_6__*,char const*,int,scalar_t__) ;
 int free (char*) ;
 int index_name_pos (TYPE_6__*,char const*,int ) ;
 int is_valid (struct diff_filespec const*) ;
 scalar_t__ merge_mode_and_contents (struct merge_options*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,char const*,int ,int ,int,struct merge_file_info*) ;
 int output (struct merge_options*,int,char*,char const*,...) ;
 int remove_file_from_index (TYPE_6__*,char const*) ;
 int strlen (char const*) ;
 char* unique_path (struct merge_options*,char const*,int ) ;
 scalar_t__ update_file (struct merge_options*,int,struct diff_filespec const*,char const*) ;
 scalar_t__ update_stages (struct merge_options*,char const*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*) ;
 int was_tracked (struct merge_options*,char const*) ;
 scalar_t__ was_tracked_and_matches (struct merge_options*,char const*,struct diff_filespec const*) ;

__attribute__((used)) static int handle_content_merge(struct merge_file_info *mfi,
    struct merge_options *opt,
    const char *path,
    int is_dirty,
    const struct diff_filespec *o,
    const struct diff_filespec *a,
    const struct diff_filespec *b,
    struct rename_conflict_info *ci)
{
 const char *reason = _("content");
 unsigned df_conflict_remains = 0;

 if (!is_valid(o))
  reason = _("add/add");

 assert(o->path && a->path && b->path);
 if (ci && dir_in_way(opt->repo->index, path, !opt->priv->call_depth,
        S_ISGITLINK(ci->ren1->pair->two->mode)))
  df_conflict_remains = 1;

 if (merge_mode_and_contents(opt, o, a, b, path,
        opt->branch1, opt->branch2,
        opt->priv->call_depth * 2, mfi))
  return -1;







 if (mfi->clean && was_tracked_and_matches(opt, path, &mfi->blob) &&
     !df_conflict_remains) {
  int pos;
  struct cache_entry *ce;

  output(opt, 3, _("Skipped %s (merged same as existing)"), path);
  if (add_cacheinfo(opt, &mfi->blob, path,
      0, (!opt->priv->call_depth && !is_dirty), 0))
   return -1;






  pos = index_name_pos(&opt->priv->orig_index, path, strlen(path));
  ce = opt->priv->orig_index.cache[pos];
  if (ce_skip_worktree(ce)) {
   pos = index_name_pos(opt->repo->index, path, strlen(path));
   ce = opt->repo->index->cache[pos];
   ce->ce_flags |= CE_SKIP_WORKTREE;
  }
  return mfi->clean;
 }

 if (!mfi->clean) {
  if (S_ISGITLINK(mfi->blob.mode))
   reason = _("submodule");
  output(opt, 1, _("CONFLICT (%s): Merge conflict in %s"),
    reason, path);
  if (ci && !df_conflict_remains)
   if (update_stages(opt, path, o, a, b))
    return -1;
 }

 if (df_conflict_remains || is_dirty) {
  char *new_path;
  if (opt->priv->call_depth) {
   remove_file_from_index(opt->repo->index, path);
  } else {
   if (!mfi->clean) {
    if (update_stages(opt, path, o, a, b))
     return -1;
   } else {
    int file_from_stage2 = was_tracked(opt, path);

    if (update_stages(opt, path, ((void*)0),
        file_from_stage2 ? &mfi->blob : ((void*)0),
        file_from_stage2 ? ((void*)0) : &mfi->blob))
     return -1;
   }

  }
  new_path = unique_path(opt, path, ci->ren1->branch);
  if (is_dirty) {
   output(opt, 1, _("Refusing to lose dirty file at %s"),
          path);
  }
  output(opt, 1, _("Adding as %s instead"), new_path);
  if (update_file(opt, 0, &mfi->blob, new_path)) {
   free(new_path);
   return -1;
  }
  free(new_path);
  mfi->clean = 0;
 } else if (update_file(opt, mfi->clean, &mfi->blob, path))
  return -1;
 return !is_dirty && mfi->clean;
}
