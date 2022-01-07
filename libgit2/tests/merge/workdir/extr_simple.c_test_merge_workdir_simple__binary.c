
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_RESET_HARD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_merge (int ,int const**,int,int *,int *) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_merge_workdir_simple__binary(void)
{
 git_oid our_oid, their_oid, our_file_oid;
 git_commit *our_commit;
 git_annotated_commit *their_head;
 const git_index_entry *binary_entry;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "1c51d885170f57a0c4e8c69ff6363d91a5b51f85", 1, "binary" },
  { 0100644, "23ed141a6ae1e798b2f721afedbe947c119111ba", 2, "binary" },
  { 0100644, "836b8b82b26cab22eaaed8820877c76d6c8bca19", 3, "binary" },
 };

 cl_git_pass(git_oid_fromstr(&our_oid, "cc338e4710c9b257106b8d16d82f86458d5beaf1"));
 cl_git_pass(git_oid_fromstr(&their_oid, "ad01aebfdf2ac13145efafe3f9fcf798882f1730"));

 cl_git_pass(git_commit_lookup(&our_commit, repo, &our_oid));
 cl_git_pass(git_reset(repo, (git_object *)our_commit, GIT_RESET_HARD, ((void*)0)));

 cl_git_pass(git_annotated_commit_lookup(&their_head, repo, &their_oid));

 cl_git_pass(git_merge(repo, (const git_annotated_commit **)&their_head, 1, ((void*)0), ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 3));

 cl_git_pass(git_index_add_bypath(repo_index, "binary"));
 cl_assert((binary_entry = git_index_get_bypath(repo_index, "binary", 0)) != ((void*)0));

 cl_git_pass(git_oid_fromstr(&our_file_oid, "23ed141a6ae1e798b2f721afedbe947c119111ba"));
 cl_assert(git_oid_cmp(&binary_entry->id, &our_file_oid) == 0);

 git_annotated_commit_free(their_head);
 git_commit_free(our_commit);
}
