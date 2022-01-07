
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_oid ;


 int cl_assert (int const*) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_reflog_append (int *,int *,int *,char*) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

void test_refs_reflog_messages__newline_gets_replaced(void)
{
 const git_reflog_entry *entry;
 git_signature *signature;
 git_reflog *reflog;
 git_oid oid;

 cl_git_pass(git_signature_now(&signature, "me", "foo@example.com"));
 cl_git_pass(git_oid_fromstr(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));

 cl_git_pass(git_reflog_read(&reflog, g_repo, "HEAD"));
 cl_assert_equal_sz(7, git_reflog_entrycount(reflog));
 cl_git_pass(git_reflog_append(reflog, &oid, signature, "inner\nnewline"));
 cl_assert_equal_sz(8, git_reflog_entrycount(reflog));

 cl_assert(entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_s(git_reflog_entry_message(entry), "inner newline");

 git_signature_free(signature);
 git_reflog_free(reflog);
}
