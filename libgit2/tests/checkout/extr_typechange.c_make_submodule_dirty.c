
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int GIT_UNUSED (void*) ;
 int cl_git_pass (int ) ;
 int force_create_file (int ) ;
 int * g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_repository_free (int *) ;
 int git_repository_workdir (int *) ;
 char* git_submodule_path (int *) ;
 int git_submodule_repo_init (int **,int *,int ) ;

__attribute__((used)) static int make_submodule_dirty(git_submodule *sm, const char *name, void *payload)
{
 git_buf submodulepath = GIT_BUF_INIT;
 git_buf dirtypath = GIT_BUF_INIT;
 git_repository *submodule_repo;

 GIT_UNUSED(name);
 GIT_UNUSED(payload);


 cl_git_pass(git_buf_joinpath(
  &submodulepath,
  git_repository_workdir(g_repo),
  git_submodule_path(sm)
 ));
 git_futils_rmdir_r(git_buf_cstr(&submodulepath), ((void*)0), GIT_RMDIR_REMOVE_FILES);


 cl_git_pass(git_submodule_repo_init(&submodule_repo, sm, 0));


 cl_git_pass(
  git_buf_joinpath(&dirtypath, git_repository_workdir(submodule_repo), "dirty"));
 force_create_file(git_buf_cstr(&dirtypath));

 git_buf_dispose(&dirtypath);
 git_buf_dispose(&submodulepath);
 git_repository_free(submodule_repo);

 return 0;
}
