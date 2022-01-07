
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__trailing_slash_star(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/file",
  "empty_standard_repo/subdir/file",
  "empty_standard_repo/subdir/sub2/sub3/file",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/subdir/.gitignore", "/**/*\n");

 refute_is_ignored("file");
 assert_is_ignored("subdir/sub2/sub3/file");
 assert_is_ignored("subdir/file");
}
