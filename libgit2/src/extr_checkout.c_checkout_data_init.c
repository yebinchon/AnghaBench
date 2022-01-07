
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_iterator ;
struct TYPE_22__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;
struct TYPE_23__ {int target_directory; } ;
typedef TYPE_2__ git_checkout_options ;
struct TYPE_25__ {int checkout_strategy; int file_open_flags; int target_directory; int baseline; int baseline_index; int paths; scalar_t__ dir_mode; } ;
struct TYPE_24__ {int strategy; int opts_free_baseline; int * repo; int attr_session; int target_path; int target_len; int mkdir_map; TYPE_5__ opts; int update_conflicts; int remove_conflicts; int removes; int pool; TYPE_7__* index; int respect_filemode; int can_symlink; int pfx; int * target; } ;
typedef TYPE_3__ checkout_data ;
struct TYPE_26__ {scalar_t__ on_disk; } ;


 int GIT_CHECKOUT_CONFLICT_STYLE_DIFF3 ;
 int GIT_CHECKOUT_CONFLICT_STYLE_MERGE ;
 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_NO_REFRESH ;
 int GIT_CHECKOUT_OPTIONS_VERSION ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_CONFIGMAP_FILEMODE ;
 int GIT_CONFIGMAP_SYMLINKS ;
 scalar_t__ GIT_DIR_MODE ;
 int GIT_ECONFLICT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECKOUT ;
 int GIT_ERROR_CHECK_VERSION (TYPE_2__ const*,int ,char*) ;
 int GIT_EUNBORNBRANCH ;
 int GIT_INIT_STRUCTURE (TYPE_5__*,int ) ;
 int GIT_MKDIR_VERIFY_DIR ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int checkout_data_clear (TYPE_3__*) ;
 int checkout_lookup_head_tree (int *,int *) ;
 int checkout_mkdir (TYPE_3__*,int ,int *,scalar_t__,int ) ;
 int * git__strcmp_cb ;
 int git_attr_session__init (int *,int *) ;
 int git_buf_len (int *) ;
 int git_buf_puts (int *,int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_get_entry (TYPE_1__**,int *,char*) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_index_has_conflicts (TYPE_7__*) ;
 int git_index_name_clear (TYPE_7__*) ;
 int git_index_read (TYPE_7__*,int) ;
 int git_index_read_safely (TYPE_7__*) ;
 int git_index_reuc_clear (TYPE_7__*) ;
 TYPE_7__* git_iterator_index (int *) ;
 int * git_iterator_owner (int *) ;
 int git_path_isdir (int ) ;
 int git_path_to_dir (int *) ;
 int git_pathspec_prefix (int *) ;
 int git_pool_init (int *,int) ;
 int git_repository__configmap_lookup (int *,int *,int ) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_config__weakptr (int **,int *) ;
 int git_repository_index (TYPE_7__**,int *) ;
 int git_repository_workdir (int *) ;
 int git_strmap_new (int *) ;
 int git_vector_init (int *,int ,int *) ;
 int memmove (TYPE_5__*,TYPE_2__ const*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int checkout_data_init(
 checkout_data *data,
 git_iterator *target,
 const git_checkout_options *proposed)
{
 int error = 0;
 git_repository *repo = git_iterator_owner(target);

 memset(data, 0, sizeof(*data));

 if (!repo) {
  git_error_set(GIT_ERROR_CHECKOUT, "cannot checkout nothing");
  return -1;
 }

 if ((!proposed || !proposed->target_directory) &&
  (error = git_repository__ensure_not_bare(repo, "checkout")) < 0)
  return error;

 data->repo = repo;
 data->target = target;

 GIT_ERROR_CHECK_VERSION(
  proposed, GIT_CHECKOUT_OPTIONS_VERSION, "git_checkout_options");

 if (!proposed)
  GIT_INIT_STRUCTURE(&data->opts, GIT_CHECKOUT_OPTIONS_VERSION);
 else
  memmove(&data->opts, proposed, sizeof(git_checkout_options));

 if (!data->opts.target_directory)
  data->opts.target_directory = git_repository_workdir(repo);
 else if (!git_path_isdir(data->opts.target_directory) &&
    (error = checkout_mkdir(data,
    data->opts.target_directory, ((void*)0),
    GIT_DIR_MODE, GIT_MKDIR_VERIFY_DIR)) < 0)
  goto cleanup;

 if ((error = git_repository_index(&data->index, data->repo)) < 0)
  goto cleanup;


 if ((data->opts.checkout_strategy & GIT_CHECKOUT_NO_REFRESH) == 0) {
  git_config *cfg;

  if ((error = git_repository_config__weakptr(&cfg, repo)) < 0)
   goto cleanup;





  if (data->index != git_iterator_index(target)) {
   if (data->opts.checkout_strategy & GIT_CHECKOUT_FORCE) {

    if ((error = git_index_read(data->index, 0)) < 0)
     goto cleanup;
   } else {





    if (git_index_has_conflicts(data->index)) {
     error = GIT_ECONFLICT;
     git_error_set(GIT_ERROR_CHECKOUT,
      "unresolved conflicts exist in the index");
     goto cleanup;
    }

    if ((error = git_index_read_safely(data->index)) < 0)
     goto cleanup;
   }


   git_index_name_clear(data->index);
   git_index_reuc_clear(data->index);
  }
 }


 if ((data->opts.checkout_strategy & GIT_CHECKOUT_FORCE) != 0)
  data->opts.checkout_strategy |= GIT_CHECKOUT_SAFE |
   GIT_CHECKOUT_RECREATE_MISSING;




 if (!data->index->on_disk &&
  (data->opts.checkout_strategy & GIT_CHECKOUT_SAFE) != 0)
  data->opts.checkout_strategy |= GIT_CHECKOUT_RECREATE_MISSING;

 data->strategy = data->opts.checkout_strategy;



 if (!data->opts.dir_mode)
  data->opts.dir_mode = GIT_DIR_MODE;

 if (!data->opts.file_open_flags)
  data->opts.file_open_flags = O_CREAT | O_TRUNC | O_WRONLY;

 data->pfx = git_pathspec_prefix(&data->opts.paths);

 if ((error = git_repository__configmap_lookup(
    &data->can_symlink, repo, GIT_CONFIGMAP_SYMLINKS)) < 0)
  goto cleanup;

 if ((error = git_repository__configmap_lookup(
    &data->respect_filemode, repo, GIT_CONFIGMAP_FILEMODE)) < 0)
  goto cleanup;

 if (!data->opts.baseline && !data->opts.baseline_index) {
  data->opts_free_baseline = 1;
  error = 0;




  if (data->index->on_disk)
   error = checkout_lookup_head_tree(&data->opts.baseline, repo);

  if (error == GIT_EUNBORNBRANCH) {
   error = 0;
   git_error_clear();
  }

  if (error < 0)
   goto cleanup;
 }

 if ((data->opts.checkout_strategy &
  (GIT_CHECKOUT_CONFLICT_STYLE_MERGE | GIT_CHECKOUT_CONFLICT_STYLE_DIFF3)) == 0) {
  git_config_entry *conflict_style = ((void*)0);
  git_config *cfg = ((void*)0);

  if ((error = git_repository_config__weakptr(&cfg, repo)) < 0 ||
   (error = git_config_get_entry(&conflict_style, cfg, "merge.conflictstyle")) < 0 ||
   error == GIT_ENOTFOUND)
   ;
  else if (error)
   goto cleanup;
  else if (strcmp(conflict_style->value, "merge") == 0)
   data->opts.checkout_strategy |= GIT_CHECKOUT_CONFLICT_STYLE_MERGE;
  else if (strcmp(conflict_style->value, "diff3") == 0)
   data->opts.checkout_strategy |= GIT_CHECKOUT_CONFLICT_STYLE_DIFF3;
  else {
   git_error_set(GIT_ERROR_CHECKOUT, "unknown style '%s' given for 'merge.conflictstyle'",
    conflict_style->value);
   error = -1;
   git_config_entry_free(conflict_style);
   goto cleanup;
  }
  git_config_entry_free(conflict_style);
 }

 git_pool_init(&data->pool, 1);

 if ((error = git_vector_init(&data->removes, 0, git__strcmp_cb)) < 0 ||
     (error = git_vector_init(&data->remove_conflicts, 0, ((void*)0))) < 0 ||
     (error = git_vector_init(&data->update_conflicts, 0, ((void*)0))) < 0 ||
     (error = git_buf_puts(&data->target_path, data->opts.target_directory)) < 0 ||
     (error = git_path_to_dir(&data->target_path)) < 0 ||
     (error = git_strmap_new(&data->mkdir_map)) < 0)
  goto cleanup;

 data->target_len = git_buf_len(&data->target_path);

 git_attr_session__init(&data->attr_session, data->repo);

cleanup:
 if (error < 0)
  checkout_data_clear(data);

 return error;
}
