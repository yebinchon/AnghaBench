
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int do_symlink (int ,char*,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int git_buf_len (int *) ;
 int p_lstat (char*,struct stat*) ;
 int p_mkdir (char*,int) ;
 int should_run () ;

void test_core_link__lstat_symlink_directory(void)
{
 git_buf target_path = GIT_BUF_INIT;
 struct stat st;

 if (!should_run())
  clar__skip();

 git_buf_join(&target_path, '/', clar_sandbox_path(), "lstat_dirtarget");

 p_mkdir("lstat_dirtarget", 0777);
 do_symlink(git_buf_cstr(&target_path), "lstat_dirlink", 1);

 cl_must_pass(p_lstat("lstat_dirtarget", &st));
 cl_assert(S_ISDIR(st.st_mode));

 cl_must_pass(p_lstat("lstat_dirlink", &st));
 cl_assert(S_ISLNK(st.st_mode));
 cl_assert_equal_i(git_buf_len(&target_path), st.st_size);

 git_buf_dispose(&target_path);
}
