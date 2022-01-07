
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert_submodule_exists (int ,char const*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int *,int *,int ,char*) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_workdir (int *) ;
 int git_submodule_add_finalize (int *) ;
 int git_submodule_add_setup (int **,int ,char*,char const*,int) ;
 int git_submodule_free (int *) ;
 int git_submodule_open (int **,int *) ;

__attribute__((used)) static void add_submodule_with_commit(const char *name)
{
 git_submodule *sm;
 git_repository *smrepo;
 git_index *idx;
 git_buf p = GIT_BUF_INIT;

 cl_git_pass(git_submodule_add_setup(&sm, g_repo,
  "https://github.com/libgit2/libgit2.git", name, 1));

 assert_submodule_exists(g_repo, name);

 cl_git_pass(git_submodule_open(&smrepo, sm));
 cl_git_pass(git_repository_index(&idx, smrepo));

 cl_git_pass(git_buf_joinpath(&p, git_repository_workdir(smrepo), "file"));
 cl_git_mkfile(p.ptr, "new file");
 git_buf_dispose(&p);

 cl_git_pass(git_index_add_bypath(idx, "file"));
 cl_git_pass(git_index_write(idx));
 git_index_free(idx);

 cl_repo_commit_from_index(((void*)0), smrepo, ((void*)0), 0, "initial commit");
 git_repository_free(smrepo);

 cl_git_pass(git_submodule_add_finalize(sm));

 git_submodule_free(sm);
}
