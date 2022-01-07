
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
struct TYPE_8__ {int flags; int id_abbrev; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_DIFF_FORCE_BINARY ;
 int GIT_DIFF_FORMAT_PATCH ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_OID_HEXSZ ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_print (int *,int ,int ,TYPE_2__*) ;
 int git_diff_print_callback__to_buf ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_1__*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int repo ;

void test_diff_binary__empty_for_no_diff(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_oid id;
 git_commit *commit;
 git_tree *tree;
 git_diff *diff;
 git_buf actual = GIT_BUF_INIT;

 opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
 opts.id_abbrev = GIT_OID_HEXSZ;

 repo = cl_git_sandbox_init("renames");

 cl_git_pass(git_oid_fromstr(&id, "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13"));
 cl_git_pass(git_commit_lookup(&commit, repo, &id));
 cl_git_pass(git_commit_tree(&tree, commit));

 cl_git_pass(git_diff_tree_to_tree(&diff, repo, tree, tree, &opts));
 cl_git_pass(git_diff_print(diff, GIT_DIFF_FORMAT_PATCH, git_diff_print_callback__to_buf, &actual));

 cl_assert_equal_s("", actual.ptr);

 git_buf_dispose(&actual);
 git_diff_free(diff);
 git_commit_free(commit);
 git_tree_free(tree);
}
