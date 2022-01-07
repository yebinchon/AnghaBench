
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__multiple_leading_slash(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/a.test",
  "empty_standard_repo/b.test",
  "empty_standard_repo/c.test",
  "empty_standard_repo/d.test",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "a.test\n"
  "/b.test\n"
  "//c.test\n"
  "///d.test\n");

 assert_is_ignored("a.test");
 assert_is_ignored("b.test");
 refute_is_ignored("c.test");
 refute_is_ignored("d.test");
}
