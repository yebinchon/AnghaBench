
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_commit__free (int *) ;
 int git_commit_message (int *) ;
 int git_commit_message_raw (int *) ;
 int parse_commit (int **,char const*) ;

void test_commit_parse__leading_lf(void)
{
 git_commit *commit;
 const char *buffer =
"tree 1810dff58d8a660512d4832e740f692884338ccd\nparent e90810b8df3e80c413d903f631643c716887138d\nauthor Vicent Marti <tanoku@gmail.com> 1273848544 +0200\ncommitter Vicent Marti <tanoku@gmail.com> 1273848544 +0200\n\n\n\nThis commit has a few LF at the start of the commit message";







 const char *message =
"This commit has a few LF at the start of the commit message";
 const char *raw_message =
"\n\nThis commit has a few LF at the start of the commit message";


 cl_git_pass(parse_commit(&commit, buffer));
 cl_assert_equal_s(message, git_commit_message(commit));
 cl_assert_equal_s(raw_message, git_commit_message_raw(commit));
 git_commit__free(commit);
}
