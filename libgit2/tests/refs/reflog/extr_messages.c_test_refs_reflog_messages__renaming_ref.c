
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int ,char*,char*,char*,char*) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name (int *) ;
 int git_reference_rename (int **,int *,char*,int,char*) ;

void test_refs_reflog_messages__renaming_ref(void)
{
 git_reference *ref, *new_ref;

 cl_git_pass(git_reference_lookup(&ref, g_repo, "refs/heads/master"));
 cl_git_pass(git_reference_rename(&new_ref, ref, "refs/heads/renamed", 0,
          "message"));

 cl_reflog_check_entry(g_repo, git_reference_name(new_ref), 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "foo@example.com", "message");

 git_reference_free(ref);
 git_reference_free(new_ref);
}
