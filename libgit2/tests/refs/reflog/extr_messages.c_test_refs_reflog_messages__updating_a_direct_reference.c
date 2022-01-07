
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,char*,int ,char*,char*,int *,char const*) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_reference_set_target (int **,int *,int *,char const*) ;

void test_refs_reflog_messages__updating_a_direct_reference(void)
{
 git_reference *ref, *ref_out, *target_ref;
 git_oid target_id;
 const char *message = "You've been logged, mate!";

 git_reference_name_to_id(&target_id, g_repo, "refs/heads/haacked");
 cl_git_pass(git_reference_lookup(&target_ref, g_repo, "refs/heads/haacked"));

 cl_git_pass(git_reference_lookup(&ref, g_repo, "refs/heads/master"));

 cl_git_pass(git_reference_set_target(&ref_out, ref, &target_id, message));

 cl_reflog_check_entry(g_repo, "refs/heads/master", 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "258f0e2a959a364e40ed6603d5d44fbb24765b10",
  ((void*)0), message);

 git_reference_free(target_ref);
 git_reference_free(ref);
 git_reference_free(ref_out);
}
