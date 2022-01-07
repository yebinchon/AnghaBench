
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__globs_without_star(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "*.foo\n"
  "**.bar\n"
 );

 assert_is_ignored(1, ".foo");
 assert_is_ignored(1, "xyz.foo");
 assert_is_ignored(1, ".bar");
 assert_is_ignored(1, "x.bar");
 assert_is_ignored(1, "xyz.bar");

 assert_is_ignored(1, "test/.foo");
 assert_is_ignored(1, "test/x.foo");
 assert_is_ignored(1, "test/xyz.foo");
 assert_is_ignored(1, "test/.bar");
 assert_is_ignored(1, "test/x.bar");
 assert_is_ignored(1, "test/xyz.bar");
}
