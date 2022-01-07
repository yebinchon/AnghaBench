
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_must_pass (int ) ;
 int p_unlink (char*) ;

void test_ignore_path__more_starstar_cases(void)
{
 cl_must_pass(p_unlink("attr/.gitignore"));
 cl_git_mkfile(
  "attr/dir/.gitignore",
  "sub/**/*.html\n");

 assert_is_ignored(0, "aaa.html");
 assert_is_ignored(0, "dir");
 assert_is_ignored(0, "dir/sub");
 assert_is_ignored(1, "dir/sub/sub2/aaa.html");
 assert_is_ignored(1, "dir/sub/aaa.html");
 assert_is_ignored(0, "dir/aaa.html");
 assert_is_ignored(0, "sub");
 assert_is_ignored(0, "sub/aaa.html");
 assert_is_ignored(0, "sub/sub2/aaa.html");
}
