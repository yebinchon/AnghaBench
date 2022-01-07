
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__unignored_dir_with_ignored_contents(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/dir/a.test",
  "empty_standard_repo/dir/subdir/a.test",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "*.test\n"
  "!dir/*\n");

 refute_is_ignored("dir/a.test");
 assert_is_ignored("dir/subdir/a.test");
}
