
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__subdir_ignore_all_toplevel_dirs_include_files(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/project/README.md",
  "empty_standard_repo/project/src/main.c",
  "empty_standard_repo/project/src/foo/foo.c",
  "empty_standard_repo/project/dist/foo.o",
  "empty_standard_repo/project/dist/main.o",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/project/.gitignore",
  "/*/\n"
  "!/src\n");

 assert_is_ignored("project/dist/foo.o");
 assert_is_ignored("project/dist/main.o");

 refute_is_ignored("project/src/foo.c");
 refute_is_ignored("project/src/foo/foo.c");
 refute_is_ignored("project/README.md");
}
