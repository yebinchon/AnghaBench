
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__ignore_all_toplevel_dirs_include_files(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/README.md",
  "empty_standard_repo/src/main.c",
  "empty_standard_repo/src/foo/foo.c",
  "empty_standard_repo/dist/foo.o",
  "empty_standard_repo/dist/main.o",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "/*/\n"
  "!/src\n");

 assert_is_ignored("dist/foo.o");
 assert_is_ignored("dist/main.o");

 refute_is_ignored("README.md");
 refute_is_ignored("src/foo.c");
 refute_is_ignored("src/foo/foo.c");
}
