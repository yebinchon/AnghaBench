
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_commit_fails (char const*,int ) ;

void test_object_commit_parse__parsing_commit_without_tree_fails(void)
{
 const char *commit =
  "author Author <author@example.com>\n"
  "committer Committer <committer@example.com>\n"
  "\n"
  "Message";
 assert_commit_fails(commit, 0);
}
