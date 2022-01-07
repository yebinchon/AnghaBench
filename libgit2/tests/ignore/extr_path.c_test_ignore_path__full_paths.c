
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__full_paths(void)
{
 cl_git_rewritefile("attr/.gitignore", "Folder/*/Contained");

 assert_is_ignored(1, "Folder/Middle/Contained");
 assert_is_ignored(0, "Folder/Middle/More/More/Contained");

 cl_git_rewritefile("attr/.gitignore", "Folder/**/Contained");

 assert_is_ignored(1, "Folder/Middle/Contained");
 assert_is_ignored(1, "Folder/Middle/More/More/Contained");

 cl_git_rewritefile("attr/.gitignore", "Folder/**/Contained/*/Child");

 assert_is_ignored(1, "Folder/Middle/Contained/Happy/Child");
 assert_is_ignored(0, "Folder/Middle/Contained/Not/Happy/Child");
 assert_is_ignored(1, "Folder/Middle/More/More/Contained/Happy/Child");
 assert_is_ignored(0, "Folder/Middle/More/More/Contained/Not/Happy/Child");
}
