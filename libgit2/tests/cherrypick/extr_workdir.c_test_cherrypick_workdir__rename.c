
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_5__ {int rename_threshold; int flags; } ;
struct TYPE_6__ {TYPE_1__ merge_opts; } ;
typedef TYPE_2__ git_cherrypick_options ;


 TYPE_2__ GIT_CHERRYPICK_OPTIONS_INIT ;
 int GIT_MERGE_FIND_RENAMES ;
 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_cherrypick (int ,int *,TYPE_2__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_cherrypick_workdir__rename(void)
{
 git_commit *head, *commit;
 git_oid head_oid, cherry_oid;
 git_cherrypick_options opts = GIT_CHERRYPICK_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "19c5c7207054604b69c84d08a7571ef9672bb5c2", 0, "file1.txt" },
  { 0100644, "a58ca3fee5eb68b11adc2703e5843f968c9dad1e", 0, "file2.txt" },
  { 0100644, "28d9eb4208074ad1cc84e71ccc908b34573f05d2", 0, "file3.txt.renamed" },
 };

 opts.merge_opts.flags |= GIT_MERGE_FIND_RENAMES;
 opts.merge_opts.rename_threshold = 50;

 git_oid_fromstr(&head_oid, "cfc4f0999a8367568e049af4f72e452d40828a15");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&cherry_oid, "2a26c7e88b285613b302ba76712bc998863f3cbc");
 cl_git_pass(git_commit_lookup(&commit, repo, &cherry_oid));
 cl_git_pass(git_cherrypick(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 3));

 git_commit_free(commit);
 git_commit_free(head);
}
