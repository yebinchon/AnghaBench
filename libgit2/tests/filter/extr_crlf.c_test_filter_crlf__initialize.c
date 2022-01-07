
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;

void test_filter_crlf__initialize(void)
{
 g_repo = cl_git_sandbox_init("crlf");

 cl_git_mkfile("crlf/.gitattributes",
  "*.txt text\n*.bin binary\n*.crlf text eol=crlf\n*.lf text eol=lf\n");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);
}
