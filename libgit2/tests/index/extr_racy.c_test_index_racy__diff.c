
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index ;
typedef int git_diff ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_diff_num_deltas (int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_repository_workdir (int ) ;

void test_index_racy__diff(void)
{
 git_index *index;
 git_diff *diff;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "A"));
 cl_git_mkfile(path.ptr, "A");


 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, "A"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, ((void*)0)));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);


 cl_git_mkfile(path.ptr, "B");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, ((void*)0)));
 cl_assert_equal_i(1, git_diff_num_deltas(diff));

 git_index_free(index);
 git_diff_free(diff);
 git_buf_dispose(&path);
}
