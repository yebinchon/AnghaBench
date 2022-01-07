
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_7__ {int file_favor; } ;
struct TYPE_6__ {int checkout_strategy; } ;
struct TYPE_8__ {TYPE_2__ merge_opts; TYPE_1__ checkout_opts; } ;
typedef TYPE_3__ git_cherrypick_options ;


 int GIT_CHECKOUT_SAFE ;
 int GIT_CHECKOUT_USE_OURS ;
 TYPE_3__ GIT_CHERRYPICK_OPTIONS_INIT ;
 int GIT_MERGE_FILE_FAVOR_OURS ;
 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_cherrypick (int ,int *,TYPE_3__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int merge_test_workdir (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_cherrypick_workdir__conflict_use_ours(void)
{
 git_commit *head = ((void*)0), *commit = ((void*)0);
 git_oid head_oid, cherry_oid;
 git_cherrypick_options opts = GIT_CHERRYPICK_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "242e7977ba73637822ffb265b46004b9b0e5153b", 0, "file1.txt" },
  { 0100644, "a58ca3fee5eb68b11adc2703e5843f968c9dad1e", 1, "file2.txt" },
  { 0100644, "bd6ffc8c6c41f0f85ff9e3d61c9479516bac0024", 2, "file2.txt" },
  { 0100644, "563f6473a3858f99b80e5f93c660512ed38e1e6f", 3, "file2.txt" },
  { 0100644, "28d9eb4208074ad1cc84e71ccc908b34573f05d2", 1, "file3.txt" },
  { 0100644, "1124c2c1ae07b26fded662d6c3f3631d9dc16f88", 2, "file3.txt" },
  { 0100644, "e233b9ed408a95e9d4b65fec7fc34943a556deb2", 3, "file3.txt" },
 };

 struct merge_index_entry merge_filesystem_entries[] = {
  { 0100644, "242e7977ba73637822ffb265b46004b9b0e5153b", 0, "file1.txt" },
  { 0100644, "bd6ffc8c6c41f0f85ff9e3d61c9479516bac0024", 0, "file2.txt" },
  { 0100644, "1124c2c1ae07b26fded662d6c3f3631d9dc16f88", 0, "file3.txt" },
 };


 opts.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_USE_OURS;

 git_oid_fromstr(&head_oid, "bafbf6912c09505ac60575cd43d3f2aba3bd84d8");

 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&cherry_oid, "e9b63f3655b2ad80c0ff587389b5a9589a3a7110");
 cl_git_pass(git_commit_lookup(&commit, repo, &cherry_oid));
 cl_git_pass(git_cherrypick(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 7));
 cl_assert(merge_test_workdir(repo, merge_filesystem_entries, 3));


 opts.merge_opts.file_favor = GIT_MERGE_FILE_FAVOR_OURS;

 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));
 cl_git_pass(git_cherrypick(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_filesystem_entries, 3));
 cl_assert(merge_test_workdir(repo, merge_filesystem_entries, 3));

 git_commit_free(commit);
 git_commit_free(head);
}
