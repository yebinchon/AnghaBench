
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_patch ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
struct TYPE_9__ {int size; int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int git_diff_to_buf (TYPE_2__*,int *,int ) ;
 int git_diff_tree_to_tree (int **,int *,int *,int *,TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_num_hunks (int *) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int *,char*) ;

void test_diff_parse__get_patch_from_diff(void)
{
 git_repository *repo;
 git_diff *computed, *parsed;
 git_tree *a, *b;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_buf computed_buf = GIT_BUF_INIT;
 git_patch *patch_computed, *patch_parsed;

 repo = cl_git_sandbox_init("diff");

 opts.flags = GIT_DIFF_SHOW_BINARY;

 cl_assert((a = resolve_commit_oid_to_tree(repo,
  "d70d245ed97ed2aa596dd1af6536e4bfdb047b69")) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(repo,
  "7a9e0b02e63179929fed24f0a3e0f19168114d10")) != ((void*)0));

 cl_git_pass(git_diff_tree_to_tree(&computed, repo, a, b, &opts));
 cl_git_pass(git_diff_to_buf(&computed_buf,
  computed, GIT_DIFF_FORMAT_PATCH));
 cl_git_pass(git_patch_from_diff(&patch_computed, computed, 0));

 cl_git_pass(git_diff_from_buffer(&parsed,
  computed_buf.ptr, computed_buf.size));
 cl_git_pass(git_patch_from_diff(&patch_parsed, parsed, 0));

 cl_assert_equal_i(
  git_patch_num_hunks(patch_computed),
  git_patch_num_hunks(patch_parsed));

 git_patch_free(patch_computed);
 git_patch_free(patch_parsed);

 git_tree_free(a);
 git_tree_free(b);

 git_diff_free(computed);
 git_diff_free(parsed);

 git_buf_dispose(&computed_buf);

 cl_git_sandbox_cleanup();
}
