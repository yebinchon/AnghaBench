
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ git_diff_options ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_4__ git_diff_find_options ;
struct TYPE_12__ {int path; } ;
struct TYPE_11__ {int path; } ;
struct TYPE_15__ {TYPE_2__ new_file; TYPE_1__ old_file; int status; } ;
typedef TYPE_5__ git_diff_delta ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_DELTA_RENAMED ;
 int GIT_DIFF_FIND_FOR_UNTRACKED ;
 TYPE_4__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_OBJECT_COMMIT ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rmfile (char*) ;
 int g_repo ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_find_similar (int *,TYPE_4__*) ;
 int git_diff_free (int *) ;
 TYPE_5__* git_diff_get_delta (int *,int ) ;
 int git_diff_num_deltas (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_3__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,int,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_diff_rename__test_small_files(void)
{
 git_index *index;
 git_reference *head_reference;
 git_commit *head_commit;
 git_tree *head_tree;
 git_tree *commit_tree;
 git_signature *signature;
 git_diff *diff;
 git_oid oid;
 const git_diff_delta *delta;
 git_diff_options diff_options = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options find_options = GIT_DIFF_FIND_OPTIONS_INIT;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_mkfile("renames/small.txt", "Hello World!\n");
 cl_git_pass(git_index_add_bypath(index, "small.txt"));

 cl_git_pass(git_repository_head(&head_reference, g_repo));
 cl_git_pass(git_reference_peel((git_object**)&head_commit, head_reference, GIT_OBJECT_COMMIT));
 cl_git_pass(git_commit_tree(&head_tree, head_commit));
 cl_git_pass(git_index_write_tree(&oid, index));
 cl_git_pass(git_tree_lookup(&commit_tree, g_repo, &oid));
 cl_git_pass(git_signature_new(&signature, "Rename", "rename@example.com", 1404157834, 0));
 cl_git_pass(git_commit_create(&oid, g_repo, "HEAD", signature, signature, ((void*)0), "Test commit", commit_tree, 1, (const git_commit**)&head_commit));

 cl_git_mkfile("renames/copy.txt", "Hello World!\n");
 cl_git_rmfile("renames/small.txt");

 diff_options.flags = GIT_DIFF_INCLUDE_UNTRACKED;
 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, commit_tree, &diff_options));
 find_options.flags = GIT_DIFF_FIND_RENAMES | GIT_DIFF_FIND_FOR_UNTRACKED;
 cl_git_pass(git_diff_find_similar(diff, &find_options));

 cl_assert_equal_i(git_diff_num_deltas(diff), 1);
 delta = git_diff_get_delta(diff, 0);
 cl_assert_equal_i(delta->status, GIT_DELTA_RENAMED);
 cl_assert_equal_s(delta->old_file.path, "small.txt");
 cl_assert_equal_s(delta->new_file.path, "copy.txt");

 git_diff_free(diff);
 git_signature_free(signature);
 git_tree_free(commit_tree);
 git_tree_free(head_tree);
 git_commit_free(head_commit);
 git_reference_free(head_reference);
 git_index_free(index);
}
