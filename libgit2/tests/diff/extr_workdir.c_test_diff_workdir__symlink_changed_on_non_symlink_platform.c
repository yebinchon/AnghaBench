
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int length; scalar_t__ contents; } ;
typedef TYPE_4__ git_vector ;
typedef int git_tree ;
struct TYPE_15__ {char** strings; int count; } ;
struct TYPE_19__ {TYPE_1__ pathspec; } ;
typedef TYPE_5__ git_diff_options ;
struct TYPE_17__ {int mode; } ;
struct TYPE_16__ {int mode; } ;
struct TYPE_20__ {TYPE_3__ new_file; TYPE_2__ old_file; } ;
typedef TYPE_6__ git_diff_delta ;
typedef int git_diff ;
struct TYPE_21__ {int files; int member_0; } ;
typedef TYPE_7__ diff_expects ;


 int GIT_CONFIGMAP_SYMLINKS ;
 TYPE_5__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_FILEMODE_LINK ;
 int GIT_RMDIR_REMOVE_FILES ;
 TYPE_4__ GIT_VECTOR_INIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_7__*) ;
 int git_diff_free (int *) ;
 TYPE_6__* git_diff_get_delta (int *,int ) ;
 int git_diff_num_deltas (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_5__*) ;
 int git_futils_mkpath2file (char*,int) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_repository__configmap_lookup (int*,int ,int ) ;
 int git_repository_set_workdir (int ,char*,int) ;
 int git_tree_free (int *) ;
 int git_vector_free (TYPE_4__*) ;
 int git_vector_insert (TYPE_4__*,char*) ;
 int p_mkdir (char*,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_workdir__symlink_changed_on_non_symlink_platform(void)
{
 git_tree *tree;
 git_diff *diff;
 diff_expects exp = {0};
 const git_diff_delta *delta;
 const char *commit = "7fccd7";
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_vector pathlist = GIT_VECTOR_INIT;
 int symlinks;

 g_repo = cl_git_sandbox_init("unsymlinked.git");

 cl_git_pass(git_repository__configmap_lookup(&symlinks, g_repo, GIT_CONFIGMAP_SYMLINKS));

 if (symlinks)
  cl_skip();

 cl_git_pass(git_vector_insert(&pathlist, "include/Nu/Nu.h"));

 opts.pathspec.strings = (char **)pathlist.contents;
 opts.pathspec.count = pathlist.length;

 cl_must_pass(p_mkdir("symlink", 0777));
 cl_git_pass(git_repository_set_workdir(g_repo, "symlink", 0));

 cl_assert((tree = resolve_commit_oid_to_tree(g_repo, commit)) != ((void*)0));



 cl_git_pass(git_futils_mkpath2file("symlink/include/Nu/Nu.h", 0755));
 cl_git_mkfile("symlink/include/Nu/Nu.h", "../../objc/Nu.h");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);





 cl_git_rewritefile("symlink/include/Nu/Nu.h", "awesome content\n");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(1, exp.files);

 cl_assert_equal_i(1, git_diff_num_deltas(diff));
 delta = git_diff_get_delta(diff, 0);
 cl_assert_equal_i(GIT_FILEMODE_LINK, delta->old_file.mode);
 cl_assert_equal_i(GIT_FILEMODE_LINK, delta->new_file.mode);

 git_diff_free(diff);

 cl_git_pass(git_futils_rmdir_r("symlink", ((void*)0), GIT_RMDIR_REMOVE_FILES));

 git_tree_free(tree);
 git_vector_free(&pathlist);
}
