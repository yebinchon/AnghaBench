
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ATTR_CHECK_NO_SYSTEM ;
 int GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_attr_get (char const**,int *,int ,char*,char*) ;
 int git_repository_is_bare (int *) ;

void test_attr_flags__bare(void)
{
 git_repository *repo = cl_git_sandbox_init("testrepo.git");
 const char *value;

 cl_assert(git_repository_is_bare(repo));

 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM, "README.md", "diff"));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(value));
}
