
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
struct TYPE_3__ {int * msg; int oid_cur; int committer; int oid_old; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_OID_HEX_ZERO ;
 int assert_signature (int const*,int ) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (int ,int *) ;
 int cl_git_pass (int ) ;
 int commit_msg ;
 scalar_t__ git_oid_cmp (int const*,int *) ;
 scalar_t__ git_oid_streq (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;
 TYPE_1__* git_reflog_entry_byindex (int *,int) ;
 scalar_t__ git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int new_ref ;

__attribute__((used)) static void assert_appends(const git_signature *committer, const git_oid *oid)
{
 git_repository *repo2;
 git_reference *lookedup_ref;
 git_reflog *reflog;
 const git_reflog_entry *entry;


 cl_git_pass(git_repository_open(&repo2, "testrepo.git"));


 cl_git_pass(git_reference_lookup(&lookedup_ref, repo2, new_ref));


 cl_git_pass(git_reflog_read(&reflog, repo2, new_ref));
 cl_assert_equal_i(3, (int)git_reflog_entrycount(reflog));


 entry = git_reflog_entry_byindex(reflog, 2);
 cl_assert(git_oid_streq(&entry->oid_old, GIT_OID_HEX_ZERO) == 0);

 entry = git_reflog_entry_byindex(reflog, 1);
 assert_signature(committer, entry->committer);
 cl_assert(git_oid_cmp(oid, &entry->oid_old) == 0);
 cl_assert(git_oid_cmp(oid, &entry->oid_cur) == 0);
 cl_assert(entry->msg == ((void*)0));

 entry = git_reflog_entry_byindex(reflog, 0);
 assert_signature(committer, entry->committer);
 cl_assert(git_oid_cmp(oid, &entry->oid_cur) == 0);
 cl_assert_equal_s(commit_msg, entry->msg);

 git_reflog_free(reflog);
 git_repository_free(repo2);

 git_reference_free(lookedup_ref);
}
