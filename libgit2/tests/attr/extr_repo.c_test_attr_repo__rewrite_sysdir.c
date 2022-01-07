
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_SYSDIR_SYSTEM ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_reopen () ;
 int clar_sandbox_path () ;
 int g_repo ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_sysdir_set (int ,int ) ;
 int p_mkdir (char*,int) ;

void test_attr_repo__rewrite_sysdir(void)
{
 git_buf sysdir = GIT_BUF_INIT;
 const char *value;

 cl_git_pass(p_mkdir("system", 0777));
 cl_git_pass(git_buf_joinpath(&sysdir, clar_sandbox_path(), "system"));
 cl_git_pass(git_sysdir_set(GIT_SYSDIR_SYSTEM, sysdir.ptr));
 g_repo = cl_git_sandbox_reopen();

 cl_git_rewritefile("system/gitattributes", "file foo=first");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file", "foo"));
 cl_assert_equal_s(value, "first");

 cl_git_rewritefile("system/gitattributes", "file foo=second");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file", "foo"));
 cl_assert_equal_s(value, "second");

 git_buf_dispose(&sysdir);
}
