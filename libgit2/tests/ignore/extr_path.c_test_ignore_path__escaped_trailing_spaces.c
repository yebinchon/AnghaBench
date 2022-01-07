
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__escaped_trailing_spaces(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "foo\\ \n"
  "bar\\ \\ \n"
  "baz \\ \n"
  "qux\\  \n"
 );

 assert_is_ignored(0, "foo");
 assert_is_ignored(1, "foo ");
 assert_is_ignored(0, "bar");
 assert_is_ignored(0, "bar ");
 assert_is_ignored(1, "bar  ");
 assert_is_ignored(1, "baz  ");
 assert_is_ignored(0, "baz ");
 assert_is_ignored(1, "qux ");
 assert_is_ignored(0, "qux");
 assert_is_ignored(0, "qux  ");
}
