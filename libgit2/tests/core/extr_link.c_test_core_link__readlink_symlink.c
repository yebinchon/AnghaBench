
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int do_symlink (int ,char*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int p_readlink (char*,char*,int) ;
 int should_run () ;

void test_core_link__readlink_symlink(void)
{
 git_buf target_path = GIT_BUF_INIT;
 int len;
 char buf[2048];

 if (!should_run())
  clar__skip();

 git_buf_join(&target_path, '/', clar_sandbox_path(), "readlink_target");

 cl_git_rewritefile("readlink_target", "This is the target of a symlink\n");
 do_symlink(git_buf_cstr(&target_path), "readlink_link", 0);

 len = p_readlink("readlink_link", buf, 2048);
 cl_must_pass(len);

 buf[len] = 0;

 cl_assert_equal_s(git_buf_cstr(&target_path), buf);

 git_buf_dispose(&target_path);
}
