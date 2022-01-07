
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; int oid_cur; int oid_old; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_OID_HEX_ZERO ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 scalar_t__ git_oid_streq (int *,int ) ;
 int git_reference_create (int **,int ,char const*,int *,int ,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 TYPE_1__* git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char const*) ;

void test_refs_reflog_messages__creating_a_direct_reference(void)
{
 git_reference *reference;
 git_oid id;
 git_reflog *reflog;
 const git_reflog_entry *entry;

 const char *name = "refs/heads/new-head";
 const char *message = "You've been logged, mate!";

 cl_git_pass(git_reference_name_to_id(&id, g_repo, "HEAD"));

 cl_git_pass(git_reference_create(&reference, g_repo, name, &id, 0, message));

 cl_git_pass(git_reflog_read(&reflog, g_repo, name));
 cl_assert_equal_sz(1, git_reflog_entrycount(reflog));

 entry = git_reflog_entry_byindex(reflog, 0);
 cl_assert(git_oid_streq(&entry->oid_old, GIT_OID_HEX_ZERO) == 0);
 cl_assert_equal_oid(&id, &entry->oid_cur);
 cl_assert_equal_s(message, entry->msg);

 git_reflog_free(reflog);
 git_reference_free(reference);
}
