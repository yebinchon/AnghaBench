
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
typedef int git_object ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_REMOTE_ORIGIN ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int clar_sandbox_path () ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_object_free (int *) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_delete (int *,int ) ;
 int git_remote_fetch (int *,int *,int *,int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,int ,int) ;
 char* git_repository_path (int ) ;
 int git_repository_set_workdir (int *,char*,int) ;
 int git_reset (int *,int *,int ,int *) ;
 int git_revparse_single (int **,int *,char*) ;

__attribute__((used)) static void populate_symlink_workdir(void)
{
 git_buf path = GIT_BUF_INIT;
 git_repository *repo;
 git_remote *origin;
 git_object *target;

 const char *url = git_repository_path(g_repo);

 cl_git_pass(git_buf_joinpath(&path, clar_sandbox_path(), "symlink.git"));
 cl_git_pass(git_repository_init(&repo, path.ptr, 1));
 cl_git_pass(git_repository_set_workdir(repo, "symlink", 1));


 git_remote_delete(repo, GIT_REMOTE_ORIGIN);

 cl_git_pass(git_remote_create(&origin, repo, GIT_REMOTE_ORIGIN, url));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), ((void*)0), ((void*)0)));
 git_remote_free(origin);

 cl_git_pass(git_revparse_single(&target, repo, "remotes/origin/master"));
 cl_git_pass(git_reset(repo, target, GIT_RESET_HARD, ((void*)0)));

 git_object_free(target);
 git_repository_free(repo);
 git_buf_dispose(&path);
}
