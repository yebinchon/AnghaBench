
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
typedef int git_index ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_11__ {int flags; TYPE_1__ pathspec; } ;
typedef TYPE_3__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ;
 TYPE_2__ GIT_VECTOR_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_3__*) ;
 int git_diff_num_deltas (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_insert (TYPE_2__*,char*) ;
 int p_mkdir (char*,int) ;

void test_diff_workdir__to_index_pathlist(void)
{
 git_index *index;
 git_diff *diff;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_vector pathlist = GIT_VECTOR_INIT;

 git_vector_insert(&pathlist, "foobar/asdf");
 git_vector_insert(&pathlist, "subdir/asdf");
 git_vector_insert(&pathlist, "ignored/asdf");

 g_repo = cl_git_sandbox_init("status");

 cl_git_mkfile("status/.gitignore", ".gitignore\n" "ignored/\n");

 cl_must_pass(p_mkdir("status/foobar", 0777));
 cl_git_mkfile("status/foobar/one", "one\n");

 cl_must_pass(p_mkdir("status/ignored", 0777));
 cl_git_mkfile("status/ignored/one", "one\n");
 cl_git_mkfile("status/ignored/two", "two\n");
 cl_git_mkfile("status/ignored/three", "three\n");

 cl_git_pass(git_repository_index(&index, g_repo));

 opts.flags = GIT_DIFF_INCLUDE_IGNORED;
 opts.pathspec.strings = (char **)pathlist.contents;
 opts.pathspec.count = pathlist.length;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, &opts));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);

 opts.flags |= GIT_DIFF_DISABLE_PATHSPEC_MATCH;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, &opts));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);

 git_index_free(index);
 git_vector_free(&pathlist);
}
