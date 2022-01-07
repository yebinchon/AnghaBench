
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int mainline; } ;
typedef TYPE_1__ git_cherrypick_options ;


 TYPE_1__ GIT_CHERRYPICK_OPTIONS_INIT ;
 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_cherrypick (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_cherrypick_workdir__merge_second_parent(void)
{
 git_commit *head, *commit;
 git_oid head_oid, cherry_oid;
 git_cherrypick_options opts = GIT_CHERRYPICK_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "487434cace79238a7091e2220611d4f20a765690", 0, "file1.txt" },
  { 0100644, "e5183bfd18e3a0a691fadde2f0d5610b73282d31", 0, "file2.txt" },
  { 0100644, "409a1bec58bf35348e8b62b72bb9c1f45cf5a587", 0, "file3.txt" },
 };

 opts.mainline = 2;

 git_oid_fromstr(&head_oid, "cfc4f0999a8367568e049af4f72e452d40828a15");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&cherry_oid, "abe4603bc7cd5b8167a267e0e2418fd2348f8cff");
 cl_git_pass(git_commit_lookup(&commit, repo, &cherry_oid));

 cl_git_pass(git_cherrypick(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 3));

 git_commit_free(commit);
 git_commit_free(head);
}
