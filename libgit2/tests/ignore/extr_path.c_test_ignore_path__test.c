
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__test(void)
{
 cl_git_rewritefile("attr/.gitignore",
  "/*/\n"
  "!/src\n");
 assert_is_ignored(0, "src/foo.c");
 assert_is_ignored(0, "src/foo/foo.c");
 assert_is_ignored(0, "README.md");
 assert_is_ignored(1, "dist/foo.o");
 assert_is_ignored(1, "bin/foo");
}
