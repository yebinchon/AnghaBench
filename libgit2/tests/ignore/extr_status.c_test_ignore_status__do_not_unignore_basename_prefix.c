
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;

void test_ignore_status__do_not_unignore_basename_prefix(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/foo_bar.txt",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "foo_bar.txt\n"
  "!bar.txt\n");

 assert_is_ignored("foo_bar.txt");
}
