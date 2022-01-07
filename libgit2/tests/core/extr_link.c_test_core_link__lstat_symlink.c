
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int do_symlink (int ,char*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int git_buf_len (int *) ;
 int p_lstat (char*,struct stat*) ;
 int should_run () ;

void test_core_link__lstat_symlink(void)
{
 git_buf target_path = GIT_BUF_INIT;
 struct stat st;

 if (!should_run())
  clar__skip();




 git_buf_join(&target_path, '/', clar_sandbox_path(), "lstat_target");

 cl_git_rewritefile("lstat_target", "This is the target of a symbolic link.\n");
 do_symlink(git_buf_cstr(&target_path), "lstat_symlink", 0);

 cl_must_pass(p_lstat("lstat_target", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert_equal_i(39, st.st_size);

 cl_must_pass(p_lstat("lstat_symlink", &st));
 cl_assert(S_ISLNK(st.st_mode));
 cl_assert_equal_i(git_buf_len(&target_path), st.st_size);

 git_buf_dispose(&target_path);
}
