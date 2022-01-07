
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__ignored_subdirfiles_with_negations(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "dir/*\n"
  "!dir/a.test\n");

 assert_is_ignored(0, "dir/a.test");
 assert_is_ignored(1, "dir/b.test");
 assert_is_ignored(1, "dir/sub1/c.test");
}
