
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog_entry ;
typedef int git_reflog ;


 int GIT_OBJECT_COMMIT ;
 int GIT_STASH_DEFAULT ;
 int assert_commit_message_contains (char*,char const*) ;
 int assert_object_oid (char*,int *,int ) ;
 int cl_assert (int const*) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int * git_oid_tostr_s (int *) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_stash_save (int *,int ,int ,char const*,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__multiline_message(void)
{
 const char *msg = "This\n\nis a multiline message\n";
 const git_reflog_entry *entry;
 git_reflog *reflog;

 assert_object_oid("refs/stash@{0}", ((void*)0), GIT_OBJECT_COMMIT);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, msg, GIT_STASH_DEFAULT));

 cl_git_pass(git_reflog_read(&reflog, repo, "refs/stash"));
 cl_assert(entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_s(git_reflog_entry_message(entry), "On master: This  is a multiline message");

 assert_object_oid("refs/stash@{0}", git_oid_tostr_s(&stash_tip_oid), GIT_OBJECT_COMMIT);
 assert_commit_message_contains("refs/stash@{0}", msg);

 git_reflog_free(reflog);
}
