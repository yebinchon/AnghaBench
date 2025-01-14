
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_2__ git_diff_find_options ;
typedef int git_diff ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 char* COPY_RENAME_COMMIT ;
 TYPE_3__ GIT_BUF_INIT ;
 int GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ;
 int GIT_DIFF_FIND_EXACT_MATCH_ONLY ;
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 char* INITIAL_COMMIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_diff_find_similar (int *,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_to_buf (TYPE_3__*,int *,int ) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_rename__identical(void)
{
 const char *old_sha = INITIAL_COMMIT;
 const char *new_sha = COPY_RENAME_COMMIT;
 git_tree *old_tree, *new_tree;
    git_diff *diff;
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options find_opts = GIT_DIFF_FIND_OPTIONS_INIT;
 git_buf diff_buf = GIT_BUF_INIT;
 const char *expected =
  "diff --git a/serving.txt b/sixserving.txt\n"
  "similarity index 100%\n"
  "rename from serving.txt\n"
  "rename to sixserving.txt\n"
  "diff --git a/sevencities.txt b/songofseven.txt\n"
  "similarity index 100%\n"
  "copy from sevencities.txt\n"
  "copy to songofseven.txt\n";

 old_tree = resolve_commit_oid_to_tree(g_repo, old_sha);
 new_tree = resolve_commit_oid_to_tree(g_repo, new_sha);

 diff_opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
 find_opts.flags = GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED |
  GIT_DIFF_FIND_EXACT_MATCH_ONLY;

 cl_git_pass(git_diff_tree_to_tree(&diff,
  g_repo, old_tree, new_tree, &diff_opts));
 cl_git_pass(git_diff_find_similar(diff, &find_opts));

 cl_git_pass(git_diff_to_buf(&diff_buf, diff, GIT_DIFF_FORMAT_PATCH));

 cl_assert_equal_s(expected, diff_buf.ptr);

 git_buf_dispose(&diff_buf);
 git_diff_free(diff);
 git_tree_free(old_tree);
 git_tree_free(new_tree);
}
