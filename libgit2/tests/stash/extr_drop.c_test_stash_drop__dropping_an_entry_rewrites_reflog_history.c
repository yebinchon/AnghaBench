
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_REFS_STASH_FILE ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_sz (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int * git_reflog_entry_byindex (int *,int) ;
 int git_reflog_entry_id_old (int const*) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,int ) ;
 int git_stash_drop (int ,int) ;
 int push_three_states () ;
 int repo ;

void test_stash_drop__dropping_an_entry_rewrites_reflog_history(void)
{
 git_reference *stash;
 git_reflog *reflog;
 const git_reflog_entry *entry;
 git_oid oid;
 size_t count;

 push_three_states();

 cl_git_pass(git_reference_lookup(&stash, repo, GIT_REFS_STASH_FILE));

 cl_git_pass(git_reflog_read(&reflog, repo, GIT_REFS_STASH_FILE));
 entry = git_reflog_entry_byindex(reflog, 1);

 git_oid_cpy(&oid, git_reflog_entry_id_old(entry));
 count = git_reflog_entrycount(reflog);

 git_reflog_free(reflog);

 cl_git_pass(git_stash_drop(repo, 1));

 cl_git_pass(git_reflog_read(&reflog, repo, GIT_REFS_STASH_FILE));
 entry = git_reflog_entry_byindex(reflog, 0);

 cl_assert_equal_oid(&oid, git_reflog_entry_id_old(entry));
 cl_assert_equal_sz(count - 1, git_reflog_entrycount(reflog));

 git_reflog_free(reflog);

 git_reference_free(stash);
}
