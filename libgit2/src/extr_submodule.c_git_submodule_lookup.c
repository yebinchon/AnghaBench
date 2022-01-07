
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int path; scalar_t__ name; } ;
typedef TYPE_1__ git_submodule ;
struct TYPE_23__ {int * submodule_cache; scalar_t__ is_bare; } ;
typedef TYPE_2__ git_repository ;
typedef int git_config_backend ;
struct TYPE_24__ {char* ptr; int size; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_25__ {char* path; scalar_t__ name; int * member_1; int * member_0; } ;
typedef TYPE_4__ fbp_data ;


 int DOT_GIT ;
 int GITMODULES_EXISTING ;
 TYPE_3__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_SUBMODULE ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 unsigned int GIT_SUBMODULE_STATUS_IN_WD ;
 int assert (int) ;
 int find_by_path ;
 int git__free (scalar_t__) ;
 int git_buf_detach (TYPE_3__*) ;
 int git_buf_dispose (TYPE_3__*) ;
 scalar_t__ git_buf_join3 (TYPE_3__*,char,scalar_t__,char const*,int ) ;
 int git_buf_puts (TYPE_3__*,char const*) ;
 int git_config_backend_foreach_match (int *,char const*,int ,TYPE_4__*) ;
 int git_config_backend_free (int *) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_path_exists (char*) ;
 scalar_t__ git_repository_workdir (TYPE_2__*) ;
 TYPE_1__* git_strmap_get (int *,char const*) ;
 int git_submodule_free (TYPE_1__*) ;
 int git_submodule_location (unsigned int*,TYPE_1__*) ;
 int git_submodule_reload (TYPE_1__*,int) ;
 int * open_gitmodules (TYPE_2__*,int ) ;
 int submodule_alloc (TYPE_1__**,TYPE_2__*,char const*) ;
 int submodule_set_lookup_error (int,char const*) ;

int git_submodule_lookup(
 git_submodule **out,
 git_repository *repo,
 const char *name)
{
 int error;
 unsigned int location;
 git_submodule *sm;

 assert(repo && name);

 if (repo->is_bare) {
  git_error_set(GIT_ERROR_SUBMODULE, "cannot get submodules without a working tree");
  return -1;
 }

 if (repo->submodule_cache != ((void*)0)) {
  if ((sm = git_strmap_get(repo->submodule_cache, name)) != ((void*)0)) {
   if (out) {
    *out = sm;
    GIT_REFCOUNT_INC(*out);
   }
   return 0;
  }
 }

 if ((error = submodule_alloc(&sm, repo, name)) < 0)
  return error;

 if ((error = git_submodule_reload(sm, 0)) < 0) {
  git_submodule_free(sm);
  return error;
 }

 if ((error = git_submodule_location(&location, sm)) < 0) {
  git_submodule_free(sm);
  return error;
 }


 if (location == 0 || location == GIT_SUBMODULE_STATUS_IN_WD) {
  git_config_backend *mods;
  const char *pattern = "submodule\\..*\\.path";
  git_buf path = GIT_BUF_INIT;
  fbp_data data = { ((void*)0), ((void*)0) };

  git_buf_puts(&path, name);
  while (path.ptr[path.size-1] == '/') {
   path.ptr[--path.size] = '\0';
  }
  data.path = path.ptr;

  mods = open_gitmodules(repo, GITMODULES_EXISTING);

  if (mods)
   error = git_config_backend_foreach_match(mods, pattern, find_by_path, &data);

  git_config_backend_free(mods);

  if (error < 0) {
   git_submodule_free(sm);
   git_buf_dispose(&path);
   return error;
  }

  if (data.name) {
   git__free(sm->name);
   sm->name = data.name;
   sm->path = git_buf_detach(&path);


   if ((error = git_submodule_reload(sm, 0)) < 0) {
    git_submodule_free(sm);
    return error;
   }
  }

  git_buf_dispose(&path);
 }

 if ((error = git_submodule_location(&location, sm)) < 0) {
  git_submodule_free(sm);
  return error;
 }


 if (location == 0 || location == GIT_SUBMODULE_STATUS_IN_WD) {
  git_submodule_free(sm);
  error = GIT_ENOTFOUND;


  if (git_repository_workdir(repo)) {
   git_buf path = GIT_BUF_INIT;
   if (git_buf_join3(&path,
       '/', git_repository_workdir(repo), name, DOT_GIT) < 0)
    return -1;

   if (git_path_exists(path.ptr))
    error = GIT_EEXISTS;

   git_buf_dispose(&path);
  }

  submodule_set_lookup_error(error, name);
  return error;
 }

 if (out)
  *out = sm;
 else
  git_submodule_free(sm);

 return 0;
}
