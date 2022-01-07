
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__ignore_space(void)
{
 cl_git_rewritefile("attr/.gitignore", "/\n\n/NewFolder \n/NewFolder/NewFolder");

 assert_is_ignored(0, "File.txt");
 assert_is_ignored(1, "NewFolder");
 assert_is_ignored(1, "NewFolder/NewFolder");
 assert_is_ignored(1, "NewFolder/NewFolder/File.txt");
}
