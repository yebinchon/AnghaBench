
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIR_MODE ;
 int _repo ;
 int chdir (int ) ;
 int cl_git_pass (int ) ;
 int cleanup_repository (char*) ;
 int git__suffixcmp (int ,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_mkdir_r (int ,int ) ;
 int git_path_prettify_dir (int *,char*,int *) ;
 int git_repository_free (int ) ;
 int git_repository_init (int *,char*,int) ;
 int git_repository_open (int *,char*) ;
 int git_repository_path (int ) ;

void test_repo_init__bare_repo_escaping_current_workdir(void)
{
 git_buf path_repository = GIT_BUF_INIT;
 git_buf path_current_workdir = GIT_BUF_INIT;

 cl_git_pass(git_path_prettify_dir(&path_current_workdir, ".", ((void*)0)));

 cl_git_pass(git_buf_joinpath(&path_repository, git_buf_cstr(&path_current_workdir), "a/b/c"));
 cl_git_pass(git_futils_mkdir_r(git_buf_cstr(&path_repository), GIT_DIR_MODE));


 cl_git_pass(chdir(git_buf_cstr(&path_repository)));


 cl_git_pass(git_repository_init(&_repo, "../d/e.git", 1));
 cl_git_pass(git__suffixcmp(git_repository_path(_repo), "/a/b/d/e.git/"));

 git_repository_free(_repo);


 cl_git_pass(git_repository_open(&_repo, "../d/e.git"));

 cl_git_pass(chdir(git_buf_cstr(&path_current_workdir)));

 git_buf_dispose(&path_current_workdir);
 git_buf_dispose(&path_repository);

 cleanup_repository("a");
}
