
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_path_isfile (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_rename (int **,int *,char*,int ,int *) ;
 int git_repository_path (int *) ;

__attribute__((used)) static void create_fake_stash_reference_and_reflog(git_repository *repo)
{
 git_reference *master, *new_master;
 git_buf log_path = GIT_BUF_INIT;

 git_buf_joinpath(&log_path, git_repository_path(repo), "logs/refs/fakestash");

 cl_assert_equal_i(0, git_path_isfile(git_buf_cstr(&log_path)));

 cl_git_pass(git_reference_lookup(&master, repo, "refs/heads/master"));
 cl_git_pass(git_reference_rename(&new_master, master, "refs/fakestash", 0, ((void*)0)));
 git_reference_free(master);

 cl_assert_equal_i(1, git_path_isfile(git_buf_cstr(&log_path)));

 git_buf_dispose(&log_path);
 git_reference_free(new_master);
}
