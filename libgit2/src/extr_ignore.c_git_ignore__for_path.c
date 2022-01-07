
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_20__ {int ptr; } ;
struct TYPE_17__ {int ign_global; TYPE_7__ dir; int ign_internal; int dir_root; int ignore_case; int * repo; } ;
typedef TYPE_1__ git_ignores ;
struct TYPE_18__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_19__ {int * cfg_excl_file; } ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_CONFIGMAP_IGNORECASE ;
 int GIT_ENOTFOUND ;
 int * GIT_IGNORE_FILE_INREPO ;
 int GIT_REPOSITORY_ITEM_INFO ;
 int assert (int ) ;
 int get_internal_ignores (int *,int *) ;
 int git__prefixcmp (int ,char const*) ;
 int git_attr_cache__init (int *) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_7__*,char const*,char*) ;
 int git_ignore__free (TYPE_1__*) ;
 int git_path_dirname_r (TYPE_2__*,char const*) ;
 int git_path_resolve_relative (TYPE_2__*,int ) ;
 scalar_t__ git_path_root (char const*) ;
 int git_path_to_dir (TYPE_2__*) ;
 int git_path_walk_up (TYPE_7__*,char const*,int ,TYPE_1__*) ;
 int git_repository__configmap_lookup (int *,int *,int ) ;
 TYPE_6__* git_repository_attr_cache (int *) ;
 int git_repository_item_path (TYPE_2__*,int *,int ) ;
 char* git_repository_workdir (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int push_ignore_file (TYPE_1__*,int *,char*,int *) ;
 int push_one_ignore ;
 int strlen (char const*) ;

int git_ignore__for_path(
 git_repository *repo,
 const char *path,
 git_ignores *ignores)
{
 int error = 0;
 const char *workdir = git_repository_workdir(repo);
 git_buf infopath = GIT_BUF_INIT;

 assert(repo && ignores && path);

 memset(ignores, 0, sizeof(*ignores));
 ignores->repo = repo;


 if ((error = git_repository__configmap_lookup(
   &ignores->ignore_case, repo, GIT_CONFIGMAP_IGNORECASE)) < 0)
  goto cleanup;

 if ((error = git_attr_cache__init(repo)) < 0)
  goto cleanup;


 if (workdir && git_path_root(path) < 0) {
  git_buf local = GIT_BUF_INIT;

  if ((error = git_path_dirname_r(&local, path)) < 0 ||
      (error = git_path_resolve_relative(&local, 0)) < 0 ||
      (error = git_path_to_dir(&local)) < 0 ||
      (error = git_buf_joinpath(&ignores->dir, workdir, local.ptr)) < 0)
  {;}
  git_buf_dispose(&local);
 } else {
  error = git_buf_joinpath(&ignores->dir, path, "");
 }
 if (error < 0)
  goto cleanup;

 if (workdir && !git__prefixcmp(ignores->dir.ptr, workdir))
  ignores->dir_root = strlen(workdir);


 if ((error = get_internal_ignores(&ignores->ign_internal, repo)) < 0)
  goto cleanup;


 if (workdir != ((void*)0)) {
  error = git_path_walk_up(
   &ignores->dir, workdir, push_one_ignore, ignores);
  if (error < 0)
   goto cleanup;
 }


 if ((error = git_repository_item_path(&infopath, repo, GIT_REPOSITORY_ITEM_INFO)) < 0 ||
  (error = push_ignore_file(ignores, &ignores->ign_global, infopath.ptr, GIT_IGNORE_FILE_INREPO)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto cleanup;
  error = 0;
 }


 if (git_repository_attr_cache(repo)->cfg_excl_file != ((void*)0))
  error = push_ignore_file(
   ignores, &ignores->ign_global, ((void*)0),
   git_repository_attr_cache(repo)->cfg_excl_file);

cleanup:
 git_buf_dispose(&infopath);
 if (error < 0)
  git_ignore__free(ignores);

 return error;
}
