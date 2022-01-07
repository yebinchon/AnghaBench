
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__deeper(void)
{
 const char *test_files[] = {
  "empty_standard_repo/foo.data",
  "empty_standard_repo/bar.data",
  "empty_standard_repo/dont_ignore/foo.data",
  "empty_standard_repo/dont_ignore/bar.data",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile("empty_standard_repo/.gitignore",
  "*.data\n"
  "!dont_ignore/*.data\n");

 assert_is_ignored("foo.data");
 assert_is_ignored("bar.data");

 refute_is_ignored("dont_ignore/foo.data");
 refute_is_ignored("dont_ignore/bar.data");
}
