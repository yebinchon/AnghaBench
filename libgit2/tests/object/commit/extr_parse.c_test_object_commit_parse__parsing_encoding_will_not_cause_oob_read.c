
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_commit_parses (char const*,scalar_t__,char*,char*,char*,int *,char*,int ) ;
 scalar_t__ strlen (char const*) ;

void test_object_commit_parse__parsing_encoding_will_not_cause_oob_read(void)
{
 const char *commit =
  "tree 3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\n"
  "author <>\n"
  "committer <>\n"
  "encoding foo\n";




 assert_commit_parses(commit, strlen(commit) - strlen("ncoding foo\n"),
  "3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8",
  "<>",
  "<>",
  ((void*)0),
  "", 0);
}
