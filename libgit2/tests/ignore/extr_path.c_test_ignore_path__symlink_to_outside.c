
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_skip () ;
 int p_symlink (char*,char*) ;

void test_ignore_path__symlink_to_outside(void)
{




 cl_git_rewritefile("attr/.gitignore", "symlink\n");
 cl_git_mkfile("target", "target");
 cl_git_pass(p_symlink("../target", "attr/symlink"));
 assert_is_ignored(1, "symlink");
 assert_is_ignored(1, "lala/../symlink");
}
