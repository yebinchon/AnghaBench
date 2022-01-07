
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* line; int header; } ;
typedef TYPE_1__ parse_test_case ;
typedef int git_oid ;


 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__* failing_header_cases ;
 int git_oid__parse (int *,char const**,char const*,int ) ;
 TYPE_1__* passing_header_cases ;
 int strlen (char const*) ;

void test_commit_parse__header(void)
{
 git_oid oid;

 parse_test_case *testcase;
 for (testcase = passing_header_cases; testcase->line != ((void*)0); testcase++)
 {
  const char *line = testcase->line;
  const char *line_end = line + strlen(line);

  cl_git_pass(git_oid__parse(&oid, &line, line_end, testcase->header));
  cl_assert(line == line_end);
 }

 for (testcase = failing_header_cases; testcase->line != ((void*)0); testcase++)
 {
  const char *line = testcase->line;
  const char *line_end = line + strlen(line);

  cl_git_fail(git_oid__parse(&oid, &line, line_end, testcase->header));
 }
}
