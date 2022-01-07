
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct merge_name_entry {char* member_0; char* member_1; char* member_2; } ;
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
struct TYPE_5__ {int rename_threshold; int flags; } ;
struct TYPE_6__ {TYPE_1__ merge_opts; } ;
typedef TYPE_2__ git_revert_options ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_MERGE_FIND_RENAMES ;
 int GIT_RESET_HARD ;
 TYPE_2__ GIT_REVERT_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,TYPE_2__*) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int merge_test_names (int ,struct merge_name_entry*,int) ;
 int repo ;
 int repo_index ;

void test_revert_workdir__rename(void)
{
 git_commit *head, *commit;
 git_oid head_oid, revert_oid;
 git_revert_options opts = GIT_REVERT_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "55acf326a69f0aab7a974ec53ffa55a50bcac14e", 1, "file4.txt" },
  { 0100644, "55acf326a69f0aab7a974ec53ffa55a50bcac14e", 2, "file5.txt" },
 };

 struct merge_name_entry merge_name_entries[] = {
  { "file4.txt", "file5.txt", "" },
 };

 opts.merge_opts.flags |= GIT_MERGE_FIND_RENAMES;
 opts.merge_opts.rename_threshold = 50;

 git_oid_fromstr(&head_oid, "55568c8de5322ff9a95d72747a239cdb64a19965");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&revert_oid, "0aa8c7e40d342fff78d60b29a4ba8e993ed79c51");
 cl_git_pass(git_commit_lookup(&commit, repo, &revert_oid));
 cl_git_pass(git_revert(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 2));
 cl_assert(merge_test_names(repo_index, merge_name_entries, 1));

 git_commit_free(commit);
 git_commit_free(head);
}
