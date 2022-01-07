
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_CRLF_TEXT_RAW ;
 int ALL_LF_TEXT_RAW ;
 int MORE_CRLF_TEXT_RAW ;
 int MORE_LF_TEXT_RAW ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_index ;
 int g_repo ;
 int git_index_add_bypath (int ,char*) ;

void test_index_crlf__safecrlf_true_no_attrs(void)
{
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);
 cl_repo_set_bool(g_repo, "core.safecrlf", 1);

 cl_git_mkfile("crlf/newfile.txt", ALL_LF_TEXT_RAW);
 cl_git_fail(git_index_add_bypath(g_index, "newfile.txt"));

 cl_git_mkfile("crlf/newfile.txt", ALL_CRLF_TEXT_RAW);
 cl_git_pass(git_index_add_bypath(g_index, "newfile.txt"));

 cl_git_mkfile("crlf/newfile.txt", MORE_CRLF_TEXT_RAW);
 cl_git_fail(git_index_add_bypath(g_index, "newfile.txt"));

 cl_git_mkfile("crlf/newfile.txt", MORE_LF_TEXT_RAW);
 cl_git_fail(git_index_add_bypath(g_index, "newfile.txt"));
}
