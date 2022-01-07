
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
struct TYPE_4__ {scalar_t__ file_favor; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_annotated_commit ;


 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int THEIRS_UNRELATED_PARENT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_merge (int ,int const**,int,TYPE_1__*,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_merge_workdir_simple__unrelated(void)
{
 git_oid their_oids[1];
 git_annotated_commit *their_heads[1];
 git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "233c0919c998ed110a4b6ff36f353aec8b713487", 0, "added-in-master.txt" },
  { 0100644, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf", 0, "automergeable.txt" },
  { 0100644, "ab6c44a2e84492ad4b41bb6bac87353e9d02ac8b", 0, "changed-in-branch.txt" },
  { 0100644, "11deab00b2d3a6f5a3073988ac050c2d7b6655e2", 0, "changed-in-master.txt" },
  { 0100644, "4e886e602529caa9ab11d71f86634bd1b6e0de10", 0, "conflicting.txt" },
  { 0100644, "ef58fdd8086c243bdc81f99e379acacfd21d32d6", 0, "new-in-unrelated1.txt" },
  { 0100644, "948ba6e701c1edab0c2d394fb7c5538334129793", 0, "new-in-unrelated2.txt" },
  { 0100644, "dfe3f22baa1f6fce5447901c3086bae368de6bdd", 0, "removed-in-branch.txt" },
  { 0100644, "c8f06f2e3bb2964174677e91f0abead0e43c9e5d", 0, "unchanged.txt" },
 };

 cl_git_pass(git_oid_fromstr(&their_oids[0], THEIRS_UNRELATED_PARENT));
 cl_git_pass(git_annotated_commit_lookup(&their_heads[0], repo, &their_oids[0]));

 merge_opts.file_favor = 0;
 cl_git_pass(git_merge(repo, (const git_annotated_commit **)their_heads, 1, &merge_opts, ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 9));

 git_annotated_commit_free(their_heads[0]);
}
