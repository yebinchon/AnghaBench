
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ATTR_CHECK_FILE_THEN_INDEX ;
 int GIT_ATTR_CHECK_INDEX_THEN_FILE ;
 int GIT_ATTR_CHECK_NO_SYSTEM ;
 int GIT_ATTR_IS_FALSE (char const*) ;
 int GIT_ATTR_IS_TRUE (char const*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_attr_get (char const**,int *,int,char*,char*) ;
 int git_repository_is_bare (int *) ;

void test_attr_flags__index_vs_workdir(void)
{
 git_repository *repo = cl_git_sandbox_init("attr_index");
 const char *value;

 cl_assert(!git_repository_is_bare(repo));


 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
  "README.md", "bar"));
 cl_assert(GIT_ATTR_IS_FALSE(value));

 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
  "README.md", "blargh"));
 cl_assert_equal_s(value, "goop");

 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
  "README.txt", "foo"));
 cl_assert(GIT_ATTR_IS_FALSE(value));


 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
  "README.md", "bar"));
 cl_assert(GIT_ATTR_IS_TRUE(value));

 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
  "README.md", "blargh"));
 cl_assert_equal_s(value, "garble");

 cl_git_pass(git_attr_get(
  &value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
  "README.txt", "foo"));
 cl_assert(GIT_ATTR_IS_TRUE(value));
}
