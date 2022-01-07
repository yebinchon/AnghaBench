
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__invalid_pattern(void)
{
 cl_git_rewritefile("attr/.gitignore", "[");
 assert_is_ignored(0, "[f");
 assert_is_ignored(0, "f");
}
