
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__negative_directory_rules_only_match_directories(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "*\n"
  "!/**/\n"
  "!*.keep\n"
  "!.gitignore\n"
 );

 assert_is_ignored(1, "src");
 assert_is_ignored(1, "src/A");
 assert_is_ignored(0, "src/");
 assert_is_ignored(0, "src/A.keep");
 assert_is_ignored(0, ".gitignore");
}
