
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
typedef int git_pool ;
typedef scalar_t__ git_iterator_type_t ;
struct TYPE_14__ {int pathspec; } ;
typedef TYPE_2__ git_diff_options ;
struct TYPE_17__ {int flags; int context_lines; scalar_t__ ignore_submodules; char const* old_prefix; char const* new_prefix; } ;
struct TYPE_13__ {scalar_t__ old_src; scalar_t__ new_src; TYPE_5__ opts; int pool; int * repo; } ;
struct TYPE_15__ {TYPE_1__ base; int diffcaps; int pathspec; } ;
typedef TYPE_3__ git_diff_generated ;
struct TYPE_16__ {int value; } ;
typedef TYPE_4__ git_config_entry ;
typedef int git_config ;


 int DIFF_FLAG_IS_SET (TYPE_3__*,int) ;
 int DIFF_FLAG_SET (TYPE_3__*,int,int) ;
 char* DIFF_NEW_PREFIX_DEFAULT ;
 char* DIFF_OLD_PREFIX_DEFAULT ;
 int GIT_CONFIGMAP_FILEMODE ;
 int GIT_CONFIGMAP_IGNORESTAT ;
 int GIT_CONFIGMAP_SYMLINKS ;
 int GIT_CONFIGMAP_TRUSTCTIME ;
 int GIT_DIFFCAPS_HAS_SYMLINKS ;
 int GIT_DIFFCAPS_IGNORE_STAT ;
 int GIT_DIFFCAPS_TRUST_CTIME ;
 int GIT_DIFFCAPS_TRUST_MODE_BITS ;
 int GIT_DIFF_IGNORE_CASE ;
 int GIT_DIFF_IGNORE_FILEMODE ;
 int GIT_DIFF_INCLUDE_TYPECHANGE ;
 int GIT_DIFF_INCLUDE_TYPECHANGE_TREES ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 int GIT_DIFF_REVERSE ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int GIT_DIFF_UPDATE_INDEX ;
 scalar_t__ GIT_ITERATOR_TYPE_INDEX ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 char* diff_mnemonic_prefix (scalar_t__,int) ;
 void* diff_strdup_prefix (int *,char const*) ;
 int git_config__configmap_lookup (int*,int *,int ) ;
 scalar_t__ git_config__get_bool_force (int *,char*,int ) ;
 int git_config__get_int_force (int *,char*,int) ;
 int git_config__lookup_entry (TYPE_4__**,int *,char*,int) ;
 int git_config_entry_free (TYPE_4__*) ;
 int git_config_free (int *) ;
 int git_error_clear () ;
 scalar_t__ git_pathspec__vinit (int *,int *,int *) ;
 int git_repository_config_snapshot (int **,int *) ;
 scalar_t__ git_submodule_parse_ignore (scalar_t__*,int ) ;
 int memcpy (TYPE_5__*,TYPE_2__ const*,int) ;

__attribute__((used)) static int diff_generated_apply_options(
 git_diff_generated *diff,
 const git_diff_options *opts)
{
 git_config *cfg = ((void*)0);
 git_repository *repo = diff->base.repo;
 git_pool *pool = &diff->base.pool;
 int val;

 if (opts) {

  bool icase = DIFF_FLAG_IS_SET(diff, GIT_DIFF_IGNORE_CASE);
  memcpy(&diff->base.opts, opts, sizeof(diff->base.opts));
  DIFF_FLAG_SET(diff, GIT_DIFF_IGNORE_CASE, icase);


  if (git_pathspec__vinit(&diff->pathspec, &opts->pathspec, pool) < 0)
   return -1;
 }


 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_TYPECHANGE_TREES))
  diff->base.opts.flags |= GIT_DIFF_INCLUDE_TYPECHANGE;


 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_SHOW_UNTRACKED_CONTENT))
  diff->base.opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED;


 if ((val = git_repository_config_snapshot(&cfg, repo)) < 0)
  return val;

 if (!git_config__configmap_lookup(&val, cfg, GIT_CONFIGMAP_SYMLINKS) && val)
  diff->diffcaps |= GIT_DIFFCAPS_HAS_SYMLINKS;

 if (!git_config__configmap_lookup(&val, cfg, GIT_CONFIGMAP_IGNORESTAT) && val)
  diff->diffcaps |= GIT_DIFFCAPS_IGNORE_STAT;

 if ((diff->base.opts.flags & GIT_DIFF_IGNORE_FILEMODE) == 0 &&
  !git_config__configmap_lookup(&val, cfg, GIT_CONFIGMAP_FILEMODE) && val)
  diff->diffcaps |= GIT_DIFFCAPS_TRUST_MODE_BITS;

 if (!git_config__configmap_lookup(&val, cfg, GIT_CONFIGMAP_TRUSTCTIME) && val)
  diff->diffcaps |= GIT_DIFFCAPS_TRUST_CTIME;




 if (!opts) {
  int context = git_config__get_int_force(cfg, "diff.context", 3);
  diff->base.opts.context_lines = context >= 0 ? (uint32_t)context : 3;


 }


 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_REVERSE)) {
  git_iterator_type_t tmp_src = diff->base.old_src;
  diff->base.old_src = diff->base.new_src;
  diff->base.new_src = tmp_src;
 }


 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_UPDATE_INDEX) &&
  (!(diff->base.old_src == GIT_ITERATOR_TYPE_WORKDIR ||
     diff->base.new_src == GIT_ITERATOR_TYPE_WORKDIR) ||
   !(diff->base.old_src == GIT_ITERATOR_TYPE_INDEX ||
     diff->base.new_src == GIT_ITERATOR_TYPE_INDEX)))
  diff->base.opts.flags &= ~GIT_DIFF_UPDATE_INDEX;


 if (diff->base.opts.ignore_submodules <= 0) {
   git_config_entry *entry;
  git_config__lookup_entry(&entry, cfg, "diff.ignoresubmodules", 1);

  if (entry && git_submodule_parse_ignore(
    &diff->base.opts.ignore_submodules, entry->value) < 0)
   git_error_clear();
  git_config_entry_free(entry);
 }


 if (!diff->base.opts.old_prefix || !diff->base.opts.new_prefix) {
  const char *use_old = DIFF_OLD_PREFIX_DEFAULT;
  const char *use_new = DIFF_NEW_PREFIX_DEFAULT;

  if (git_config__get_bool_force(cfg, "diff.noprefix", 0))
   use_old = use_new = "";
  else if (git_config__get_bool_force(cfg, "diff.mnemonicprefix", 0)) {
   use_old = diff_mnemonic_prefix(diff->base.old_src, 1);
   use_new = diff_mnemonic_prefix(diff->base.new_src, 0);
  }

  if (!diff->base.opts.old_prefix)
   diff->base.opts.old_prefix = use_old;
  if (!diff->base.opts.new_prefix)
   diff->base.opts.new_prefix = use_new;
 }


 diff->base.opts.old_prefix = diff_strdup_prefix(pool, diff->base.opts.old_prefix);
 diff->base.opts.new_prefix = diff_strdup_prefix(pool, diff->base.opts.new_prefix);

 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_REVERSE)) {
  const char *tmp_prefix = diff->base.opts.old_prefix;
  diff->base.opts.old_prefix = diff->base.opts.new_prefix;
  diff->base.opts.new_prefix = tmp_prefix;
 }

 git_config_free(cfg);


 return (!diff->base.opts.old_prefix || !diff->base.opts.new_prefix) ? -1 : 0;
}
