
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_index ;


 int BRANCH_RENAME_OURS ;
 int BRANCH_RENAME_THEIRS ;
 int GIT_MERGE_FIND_RENAMES ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_trees_from_branches (int **,int ,int ,int ,TYPE_1__*) ;
 int repo ;

void test_merge_trees_renames__no_rename_index(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "68c6c84b091926c7d90aa6a79b2bc3bb6adccd8e", 0, "0a-no-change.txt" },
  { 0100644, "f0ce2b8e4986084d9b308fb72709e414c23eb5e6", 0, "0b-duplicated-in-ours.txt" },
  { 0100644, "f0ce2b8e4986084d9b308fb72709e414c23eb5e6", 1, "0b-rewritten-in-ours.txt" },
  { 0100644, "e376fbdd06ebf021c92724da9f26f44212734e3e", 2, "0b-rewritten-in-ours.txt" },
  { 0100644, "b2d399ae15224e1d58066e3c8df70ce37de7a656", 3, "0b-rewritten-in-ours.txt" },
  { 0100644, "2f56120107d680129a5d9791b521cb1e73a2ed31", 0, "0c-duplicated-in-theirs.txt" },
  { 0100644, "2f56120107d680129a5d9791b521cb1e73a2ed31", 1, "0c-rewritten-in-theirs.txt" },
  { 0100644, "efc9121fdedaf08ba180b53ebfbcf71bd488ed09", 2, "0c-rewritten-in-theirs.txt" },
  { 0100644, "712ebba6669ea847d9829e4f1059d6c830c8b531", 3, "0c-rewritten-in-theirs.txt" },
  { 0100644, "c3d02eeef75183df7584d8d13ac03053910c1301", 0, "1a-newname-in-ours-edited-in-theirs.txt" },
  { 0100644, "d0d4594e16f2e19107e3fa7ea63e7aaaff305ffb", 0, "1a-newname-in-ours.txt" },
  { 0100644, "c3d02eeef75183df7584d8d13ac03053910c1301", 1, "1a-renamed-in-ours-edited-in-theirs.txt" },
  { 0100644, "0d872f8e871a30208305978ecbf9e66d864f1638", 3, "1a-renamed-in-ours-edited-in-theirs.txt" },
  { 0100644, "241a1005cd9b980732741b74385b891142bcba28", 0, "1b-newname-in-theirs-edited-in-ours.txt" },
  { 0100644, "2b5f1f181ee3b58ea751f5dd5d8f9b445520a136", 0, "1b-newname-in-theirs.txt" },
  { 0100644, "241a1005cd9b980732741b74385b891142bcba28", 1, "1b-renamed-in-theirs-edited-in-ours.txt" },
  { 0100644, "ed9523e62e453e50dd9be1606af19399b96e397a", 2, "1b-renamed-in-theirs-edited-in-ours.txt" },
  { 0100644, "178940b450f238a56c0d75b7955cb57b38191982", 0, "2-newname-in-both.txt" },
  { 0100644, "18cb316b1cefa0f8a6946f0e201a8e1a6f845ab9", 0, "3a-newname-in-ours-deleted-in-theirs.txt" },
  { 0100644, "36219b49367146cb2e6a1555b5a9ebd4d0328495", 0, "3b-newname-in-theirs-deleted-in-ours.txt" },
  { 0100644, "227792b52aaa0b238bea00ec7e509b02623f168c", 2, "4a-newname-in-ours-added-in-theirs.txt" },
  { 0100644, "8b5b53cb2aa9ceb1139f5312fcfa3cc3c5a47c9a", 3, "4a-newname-in-ours-added-in-theirs.txt" },
  { 0100644, "de872ee3618b894992e9d1e18ba2ebe256a112f9", 2, "4b-newname-in-theirs-added-in-ours.txt" },
  { 0100644, "98d52d07c0b0bbf2b46548f6aa521295c2cb55db", 3, "4b-newname-in-theirs-added-in-ours.txt" },
  { 0100644, "d3719a5ae8e4d92276b5313ce976f6ee5af2b436", 2, "5a-newname-in-ours-added-in-theirs.txt" },
  { 0100644, "98ba4205fcf31f5dd93c916d35fe3f3b3d0e6714", 3, "5a-newname-in-ours-added-in-theirs.txt" },
  { 0100644, "385c8a0f26ddf79e9041e15e17dc352ed2c4cced", 2, "5b-newname-in-theirs-added-in-ours.txt" },
  { 0100644, "63247125386de9ec90a27ad36169307bf8a11a38", 3, "5b-newname-in-theirs-added-in-ours.txt" },
  { 0100644, "d8fa77b6833082c1ea36b7828a582d4c43882450", 0, "6-both-renamed-1-to-2-ours.txt" },
  { 0100644, "d8fa77b6833082c1ea36b7828a582d4c43882450", 0, "6-both-renamed-1-to-2-theirs.txt" },
  { 0100644, "b42712cfe99a1a500b2a51fe984e0b8a7702ba11", 2, "7-both-renamed.txt" },
  { 0100644, "b69fe837e4cecfd4c9a40cdca7c138468687df07", 3, "7-both-renamed.txt" },
 };

 opts.flags &= ~GIT_MERGE_FIND_RENAMES;

 cl_git_pass(merge_trees_from_branches(&index, repo,
  BRANCH_RENAME_OURS, BRANCH_RENAME_THEIRS,
  &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 32));

 git_index_free(index);
}
