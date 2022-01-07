
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__escaped_character(void)
{
 cl_git_rewritefile("attr/.gitignore", "\\c\n");
 assert_is_ignored(1, "c");
 assert_is_ignored(0, "\\c");
}
