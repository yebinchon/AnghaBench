
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 char* clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_buf_put (TYPE_1__*,char const*,int) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_path_exists (int ) ;
 int git_path_isdir (int ) ;
 int git_path_root (char const*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,int ,int ) ;

void test_repo_init__at_filesystem_root(void)
{
 git_repository *repo;
 const char *sandbox = clar_sandbox_path();
 git_buf root = GIT_BUF_INIT;
 int root_len;

 if (!cl_is_env_set("GITTEST_INVASIVE_FS_STRUCTURE"))
  cl_skip();

 root_len = git_path_root(sandbox);
 cl_assert(root_len >= 0);

 git_buf_put(&root, sandbox, root_len+1);
 git_buf_joinpath(&root, root.ptr, "libgit2_test_dir");

 cl_assert(!git_path_exists(root.ptr));

 cl_git_pass(git_repository_init(&repo, root.ptr, 0));
 cl_assert(git_path_isdir(root.ptr));
 cl_git_pass(git_futils_rmdir_r(root.ptr, ((void*)0), GIT_RMDIR_REMOVE_FILES));

 git_buf_dispose(&root);
 git_repository_free(repo);
}
