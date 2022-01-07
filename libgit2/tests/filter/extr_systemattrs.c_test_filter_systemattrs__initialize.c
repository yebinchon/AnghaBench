
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; } ;


 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_libgit2_opts (int ,int ,TYPE_1__*) ;
 int p_unlink (char*) ;
 TYPE_1__ system_attr_path ;

void test_filter_systemattrs__initialize(void)
{
 g_repo = cl_git_sandbox_init("crlf");
 cl_must_pass(p_unlink("crlf/.gitattributes"));

 cl_git_pass(git_libgit2_opts(
  GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, &system_attr_path));
 cl_git_pass(git_buf_joinpath(&system_attr_path,
  system_attr_path.ptr, "gitattributes"));

 cl_git_mkfile(system_attr_path.ptr,
  "*.txt text\n"
  "*.bin binary\n"
  "*.crlf text eol=crlf\n"
  "*.lf text eol=lf\n");
}
