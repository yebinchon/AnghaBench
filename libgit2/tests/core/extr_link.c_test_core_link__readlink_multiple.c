
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_must_pass (int) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int do_symlink (int ,int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int p_readlink (char*,char*,int) ;
 int should_run () ;

void test_core_link__readlink_multiple(void)
{
 git_buf target_path = GIT_BUF_INIT,
  path3 = GIT_BUF_INIT, path2 = GIT_BUF_INIT, path1 = GIT_BUF_INIT;
 int len;
 char buf[2048];

 if (!should_run())
  clar__skip();

 git_buf_join(&target_path, '/', clar_sandbox_path(), "readlink_final");
 git_buf_join(&path3, '/', clar_sandbox_path(), "readlink_3");
 git_buf_join(&path2, '/', clar_sandbox_path(), "readlink_2");
 git_buf_join(&path1, '/', clar_sandbox_path(), "readlink_1");

 do_symlink(git_buf_cstr(&target_path), git_buf_cstr(&path3), 0);
 do_symlink(git_buf_cstr(&path3), git_buf_cstr(&path2), 0);
 do_symlink(git_buf_cstr(&path2), git_buf_cstr(&path1), 0);

 len = p_readlink("readlink_1", buf, 2048);
 cl_must_pass(len);

 buf[len] = 0;

 cl_assert_equal_s(git_buf_cstr(&path2), buf);

 git_buf_dispose(&path1);
 git_buf_dispose(&path2);
 git_buf_dispose(&path3);
 git_buf_dispose(&target_path);
}
