
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__escaped_slash(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "\\\\\n"
  "\\\\preceding\n"
  "inter\\\\mittent\n"
  "trailing\\\\\n"
 );


 assert_is_ignored(1, "\\");
 assert_is_ignored(1, "\\preceding");

 assert_is_ignored(1, "inter\\mittent");
 assert_is_ignored(1, "trailing\\");
}
