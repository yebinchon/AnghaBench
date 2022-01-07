
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_expected {int attr; int expected_str; int expected; int path; } ;


 scalar_t__ ARRAY_SIZE (struct attr_expected*) ;
 int GIT_ATTR_FILE__FROM_FILE ;
 int attr_check_expected (int ,int ,int ,char const*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 struct attr_expected* get_one_test_cases ;
 int git_attr_cache__is_cached (int ,int ,char*) ;
 int git_attr_get (char const**,int ,int ,int ,int ) ;

void test_attr_repo__get_one_start_deep(void)
{
 int i;

 for (i = (int)ARRAY_SIZE(get_one_test_cases) - 1; i >= 0; --i) {
  struct attr_expected *scan = &get_one_test_cases[i];
  const char *value;

  cl_git_pass(git_attr_get(&value, g_repo, 0, scan->path, scan->attr));
  attr_check_expected(
   scan->expected, scan->expected_str, scan->attr, value);
 }

 cl_assert(git_attr_cache__is_cached(
  g_repo, GIT_ATTR_FILE__FROM_FILE, ".git/info/attributes"));
 cl_assert(git_attr_cache__is_cached(
  g_repo, GIT_ATTR_FILE__FROM_FILE, ".gitattributes"));
 cl_assert(git_attr_cache__is_cached(
  g_repo, GIT_ATTR_FILE__FROM_FILE, "sub/.gitattributes"));
}
