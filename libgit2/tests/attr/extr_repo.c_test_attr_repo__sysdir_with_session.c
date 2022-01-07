
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_attr_session ;


 int ARRAY_SIZE (char const**) ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_SYSDIR_SYSTEM ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_reopen () ;
 int clar_sandbox_path () ;
 int g_repo ;
 int git_attr_get_many_with_session (char const**,int ,int *,int ,char*,int ,char const**) ;
 int git_attr_session__free (int *) ;
 int git_attr_session__init (int *,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_sysdir_set (int ,int ) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;
 int p_unlink (char*) ;

void test_attr_repo__sysdir_with_session(void)
{
 const char *values[2], *attrs[2] = { "foo", "bar" };
 git_buf sysdir = GIT_BUF_INIT;
 git_attr_session session;

 cl_git_pass(p_mkdir("system", 0777));
 cl_git_rewritefile("system/gitattributes", "file foo=1 bar=2");
 cl_git_pass(git_buf_joinpath(&sysdir, clar_sandbox_path(), "system"));
 cl_git_pass(git_sysdir_set(GIT_SYSDIR_SYSTEM, sysdir.ptr));
 g_repo = cl_git_sandbox_reopen();

 cl_git_pass(git_attr_session__init(&session, g_repo));
 cl_git_pass(git_attr_get_many_with_session(values, g_repo, &session, 0, "file", ARRAY_SIZE(attrs), attrs));

 cl_assert_equal_s(values[0], "1");
 cl_assert_equal_s(values[1], "2");

 cl_git_pass(p_unlink("system/gitattributes"));
 cl_git_pass(p_rmdir("system"));
 git_buf_dispose(&sysdir);
 git_attr_session__free(&session);
}
