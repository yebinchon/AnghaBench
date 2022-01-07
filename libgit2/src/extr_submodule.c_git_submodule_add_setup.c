
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
typedef int git_config_backend ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int DOT_GIT ;
 int GITMODULES_CREATE ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ERROR_SUBMODULE ;
 int assert (int ) ;
 scalar_t__ git__prefixcmp (char const*,int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_buf_printf (TYPE_1__*,char*,char const*) ;
 int git_config_backend_free (int *) ;
 int git_config_backend_set_string (int *,int ,char const*) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_path_contains (TYPE_1__*,int ) ;
 scalar_t__ git_path_exists (int ) ;
 scalar_t__ git_path_root (char const*) ;
 int git_repository_free (int *) ;
 int git_repository_workdir (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_init (int *,int) ;
 int git_submodule_lookup (int **,int *,char const*) ;
 int git_submodule_resolve_url (TYPE_1__*,int *,char const*) ;
 int is_path_occupied (int*,int *,char const*) ;
 int * open_gitmodules (int *,int ) ;
 int strlen (int ) ;
 int submodule_config_key_trunc_puts (TYPE_1__*,char*) ;
 int submodule_repo_init (int **,int *,char const*,int ,int) ;

int git_submodule_add_setup(
 git_submodule **out,
 git_repository *repo,
 const char *url,
 const char *path,
 int use_gitlink)
{
 int error = 0;
 git_config_backend *mods = ((void*)0);
 git_submodule *sm = ((void*)0);
 git_buf name = GIT_BUF_INIT, real_url = GIT_BUF_INIT;
 git_repository *subrepo = ((void*)0);
 bool path_occupied;

 assert(repo && url && path);



 if (git_submodule_lookup(((void*)0), repo, path) < 0)
  git_error_clear();
 else {
  git_error_set(GIT_ERROR_SUBMODULE,
   "attempt to add submodule '%s' that already exists", path);
  return GIT_EEXISTS;
 }



 if (git__prefixcmp(path, git_repository_workdir(repo)) == 0)
  path += strlen(git_repository_workdir(repo));

 if (git_path_root(path) >= 0) {
  git_error_set(GIT_ERROR_SUBMODULE, "submodule path must be a relative path");
  error = -1;
  goto cleanup;
 }

 if ((error = is_path_occupied(&path_occupied, repo, path)) < 0)
  goto cleanup;

 if (path_occupied) {
  error = GIT_EEXISTS;
  goto cleanup;
 }



 if (!(mods = open_gitmodules(repo, GITMODULES_CREATE))) {
  git_error_set(GIT_ERROR_SUBMODULE,
   "adding submodules to a bare repository is not supported");
  return -1;
 }

 if ((error = git_buf_printf(&name, "submodule.%s.path", path)) < 0 ||
  (error = git_config_backend_set_string(mods, name.ptr, path)) < 0)
  goto cleanup;

 if ((error = submodule_config_key_trunc_puts(&name, "url")) < 0 ||
  (error = git_config_backend_set_string(mods, name.ptr, url)) < 0)
  goto cleanup;

 git_buf_clear(&name);



 error = git_buf_joinpath(&name, git_repository_workdir(repo), path);
 if (error < 0)
  goto cleanup;




 if (!(git_path_exists(name.ptr) &&
  git_path_contains(&name, DOT_GIT))) {


  if ((error = git_submodule_resolve_url(&real_url, repo, url)) < 0)
   goto cleanup;

   if ((error = submodule_repo_init(&subrepo, repo, path, real_url.ptr, use_gitlink)) < 0)
   goto cleanup;
 }

 if ((error = git_submodule_lookup(&sm, repo, path)) < 0)
  goto cleanup;

 error = git_submodule_init(sm, 0);

cleanup:
 if (error && sm) {
  git_submodule_free(sm);
  sm = ((void*)0);
 }
 if (out != ((void*)0))
  *out = sm;

 git_config_backend_free(mods);
 git_repository_free(subrepo);
 git_buf_dispose(&real_url);
 git_buf_dispose(&name);

 return error;
}
