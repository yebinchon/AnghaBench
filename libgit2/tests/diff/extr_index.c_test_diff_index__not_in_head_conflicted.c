
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_7__ {char* path; int id; int mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
struct TYPE_8__ {int status; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_diff ;


 int GIT_DELTA_CONFLICTED ;
 int GIT_FILEMODE_BLOB ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 TYPE_3__* git_diff_get_delta (int *,int ) ;
 int git_diff_num_deltas (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_index_conflict_add (int *,int *,int *,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_index__not_in_head_conflicted(void)
{
 const char *a_commit = "26a125ee1bf";
 git_index_entry theirs = {{0}};
 git_index *index;
 git_diff *diff;
 const git_diff_delta *delta;

 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_read_tree(index, a));

 theirs.path = "file_not_in_head";
 theirs.mode = GIT_FILEMODE_BLOB;
 git_oid_fromstr(&theirs.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
 cl_git_pass(git_index_conflict_add(index, ((void*)0), ((void*)0), &theirs));

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, index, ((void*)0)));

 cl_assert_equal_i(git_diff_num_deltas(diff), 1);
 delta = git_diff_get_delta(diff, 0);
 cl_assert_equal_i(delta->status, GIT_DELTA_CONFLICTED);

 git_diff_free(diff);
 git_index_free(index);
 git_tree_free(a);
}
