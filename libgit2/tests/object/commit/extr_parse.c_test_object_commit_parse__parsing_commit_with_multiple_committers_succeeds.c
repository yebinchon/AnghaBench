
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_commit_parses (char const*,int ,char*,char*,char*,int *,char*,int ) ;

void test_object_commit_parse__parsing_commit_with_multiple_committers_succeeds(void)
{
 const char *commit =
  "tree 3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\n"
  "author Author <author@example.com>\n"
  "committer Committer1 <committer@example.com>\n"
  "committer Committer2 <committer@example.com>\n"
  "committer Committer3 <committer@example.com>\n"
  "committer Committer4 <committer@example.com>\n"
  "\n"
  "Message";
 assert_commit_parses(commit, 0,
  "3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8",
  "Author <author@example.com>",
  "Committer1 <committer@example.com>",
  ((void*)0),
  "Message", 0);
}
