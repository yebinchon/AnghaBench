
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_10__ {char* path; int id; int mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
struct TYPE_11__ {int context_lines; int interhunk_lines; unsigned long flags; } ;
typedef TYPE_3__ git_diff_options ;
typedef int git_diff ;
typedef int diff_expects ;


 TYPE_3__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_FILEMODE_BLOB ;
 int cl_assert (int *) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_3__*) ;
 int git_index_conflict_add (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int memset (int *,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

__attribute__((used)) static void do_conflicted_diff(diff_expects *exp, unsigned long flags)
{
 const char *a_commit = "26a125ee1bf";
 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_index_entry ancestor = {{0}}, ours = {{0}}, theirs = {{0}};
 git_diff *diff = ((void*)0);
 git_index *index;

 cl_assert(a);

 opts.context_lines = 1;
 opts.interhunk_lines = 1;
 opts.flags |= flags;

 memset(exp, 0, sizeof(diff_expects));

 cl_git_pass(git_repository_index(&index, g_repo));

 ancestor.path = ours.path = theirs.path = "staged_changes";
 ancestor.mode = ours.mode = theirs.mode = GIT_FILEMODE_BLOB;

 git_oid_fromstr(&ancestor.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
 git_oid_fromstr(&ours.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
 git_oid_fromstr(&theirs.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");

 cl_git_pass(git_index_conflict_add(index, &ancestor, &ours, &theirs));
 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, index, &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, exp));

 git_diff_free(diff);
 git_tree_free(a);
 git_index_free(index);
}
