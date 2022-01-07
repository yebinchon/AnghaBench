
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__leading_spaces_are_significant(void)
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
  " a.test\n"
  "# this is a comment\n"
  "b.test\n"
  "\tc.test\n"
  " # not a comment\n"
  "d.test\n");

 refute_is_ignored("a.test");
 assert_is_ignored(" a.test");
 refute_is_ignored("# this is a comment");
 assert_is_ignored("b.test");
 refute_is_ignored("c.test");
 assert_is_ignored("\tc.test");
 assert_is_ignored(" # not a comment");
 assert_is_ignored("d.test");
}
