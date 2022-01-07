
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_4__ {int oid_cur; int oid_old; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;
struct TYPE_5__ {int repo; int worktree; } ;


 int REFLOG ;
 int REFLOG_MESSAGE ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_3__ fixture ;
 scalar_t__ git_oid_cmp (int const*,int *) ;
 int git_reference_free (int *) ;
 int * git_reference_target (int *) ;
 int git_reflog_append (int *,int const*,int *,int ) ;
 TYPE_1__* git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,int ) ;
 int git_reflog_write (int *) ;
 int git_repository_head (int **,int ) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

void test_worktree_reflog__append_then_read(void)
{
 git_reflog *reflog, *parent_reflog;
 const git_reflog_entry *entry;
 git_reference *head;
 git_signature *sig;
 const git_oid *oid;

 cl_git_pass(git_repository_head(&head, fixture.worktree));
 cl_assert((oid = git_reference_target(head)) != ((void*)0));
 cl_git_pass(git_signature_now(&sig, "foo", "foo@bar"));

 cl_git_pass(git_reflog_read(&reflog, fixture.worktree, REFLOG));
 cl_git_pass(git_reflog_append(reflog, oid, sig, REFLOG_MESSAGE));
 git_reflog_write(reflog);

 cl_git_pass(git_reflog_read(&parent_reflog, fixture.repo, REFLOG));
 entry = git_reflog_entry_byindex(parent_reflog, 0);
 cl_assert(git_oid_cmp(oid, &entry->oid_old) == 0);
 cl_assert(git_oid_cmp(oid, &entry->oid_cur) == 0);

 git_reference_free(head);
 git_signature_free(sig);
 git_reflog_free(reflog);
 git_reflog_free(parent_reflog);
}
