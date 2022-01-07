
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; int workdir_path; } ;
typedef TYPE_1__ git_repository_init_options ;
typedef int git_repository ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 int GIT_REPOSITORY_INIT_NO_DOTGIT_DIR ;
 int GIT_REPOSITORY_INIT_NO_REINIT ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_RELATIVE_GITLINK ;
 int GIT_REPOSITORY_ITEM_MODULES ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char const*) ;
 int git_repository_init_ext (int **,int ,TYPE_1__*) ;
 int git_repository_item_path (TYPE_2__*,int *,int ) ;
 int git_repository_workdir (int *) ;

__attribute__((used)) static int submodule_repo_create(
 git_repository **out,
 git_repository *parent_repo,
 const char *path)
{
 int error = 0;
 git_buf workdir = GIT_BUF_INIT, repodir = GIT_BUF_INIT;
 git_repository_init_options initopt = GIT_REPOSITORY_INIT_OPTIONS_INIT;
 git_repository *subrepo = ((void*)0);

 initopt.flags =
  GIT_REPOSITORY_INIT_MKPATH |
  GIT_REPOSITORY_INIT_NO_REINIT |
  GIT_REPOSITORY_INIT_NO_DOTGIT_DIR |
  GIT_REPOSITORY_INIT_RELATIVE_GITLINK;


 error = git_buf_joinpath(&workdir, git_repository_workdir(parent_repo), path);
 if (error < 0)
  goto cleanup;

 initopt.workdir_path = workdir.ptr;






 error = git_repository_item_path(&repodir, parent_repo, GIT_REPOSITORY_ITEM_MODULES);
 if (error < 0)
  goto cleanup;
 error = git_buf_joinpath(&repodir, repodir.ptr, path);
 if (error < 0)
  goto cleanup;

 error = git_repository_init_ext(&subrepo, repodir.ptr, &initopt);

cleanup:
 git_buf_dispose(&workdir);
 git_buf_dispose(&repodir);

 *out = subrepo;

 return error;
}
