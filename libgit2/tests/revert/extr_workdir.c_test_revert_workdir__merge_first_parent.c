
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
struct TYPE_4__ {int mainline; } ;
typedef TYPE_1__ git_revert_options ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_RESET_HARD ;
 TYPE_1__ GIT_REVERT_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,TYPE_1__*) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_revert_workdir__merge_first_parent(void)
{
 git_commit *head;
 git_oid head_oid;
 git_revert_options opts = GIT_REVERT_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "296a6d3be1dff05c5d1f631d2459389fa7b619eb", 0, "file-mainline.txt" },
  { 0100644, "0cdb66192ee192f70f891f05a47636057420e871", 0, "file1.txt" },
  { 0100644, "73ec36fa120f8066963a0bc9105bb273dbd903d7", 0, "file2.txt" },
 };

 opts.mainline = 1;

 git_oid_fromstr(&head_oid, "5acdc74af27172ec491d213ee36cea7eb9ef2579");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 cl_git_pass(git_revert(repo, head, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 3));

 git_commit_free(head);
}
