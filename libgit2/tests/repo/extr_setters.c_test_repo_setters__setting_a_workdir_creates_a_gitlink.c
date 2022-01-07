
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__prefixcmp (int ,char*) ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_futils_readbuffer (int *,char*) ;
 int git_path_isfile (char*) ;
 int git_repository_config (int **,int ) ;
 int git_repository_set_workdir (int ,char*,int) ;
 int repo ;

void test_repo_setters__setting_a_workdir_creates_a_gitlink(void)
{
 git_config *cfg;
 git_buf buf = GIT_BUF_INIT;
 git_buf content = GIT_BUF_INIT;

 cl_git_pass(git_repository_set_workdir(repo, "./new_workdir", 1));

 cl_assert(git_path_isfile("./new_workdir/.git"));

 cl_git_pass(git_futils_readbuffer(&content, "./new_workdir/.git"));
 cl_assert(git__prefixcmp(git_buf_cstr(&content), "gitdir: ") == 0);
 cl_assert(git__suffixcmp(git_buf_cstr(&content), "testrepo.git/") == 0);
 git_buf_dispose(&content);

 cl_git_pass(git_repository_config(&cfg, repo));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "core.worktree"));
 cl_assert(git__suffixcmp(git_buf_cstr(&buf), "new_workdir/") == 0);

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
