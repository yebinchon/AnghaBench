
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__unignore_entry_in_ignored_dir(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/bar.txt",
  "empty_standard_repo/parent/bar.txt",
  "empty_standard_repo/parent/child/bar.txt",
  "empty_standard_repo/nested/parent/child/bar.txt",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "bar.txt\n"
  "!parent/child/bar.txt\n");

 assert_is_ignored("bar.txt");
 assert_is_ignored("parent/bar.txt");
 refute_is_ignored("parent/child/bar.txt");
 assert_is_ignored("nested/parent/child/bar.txt");
}
