
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_FILTER_DRIVER_PRIORITY ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int create_wildcard_filter () ;
 int g_repo ;
 int git_filter_register (char*,int ,int ) ;

void test_filter_wildcard__initialize(void)
{
 cl_git_pass(git_filter_register(
  "wildcard", create_wildcard_filter(), GIT_FILTER_DRIVER_PRIORITY));

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_rewritefile(
  "empty_standard_repo/.gitattributes",
  "* binary\n"
  "hero-flip-* filter=wcflip\n"
  "hero-reverse-* filter=wcreverse\n"
  "none-* filter=unregistered\n");
}
