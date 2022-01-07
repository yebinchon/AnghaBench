
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_filter_list ;
struct TYPE_6__ {int size; int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int BITFLIPPED_AND_REVERSED_DATA_LEN ;
 TYPE_1__ GIT_BUF_INIT_CONST (int ,int ) ;
 int GIT_FILTER_TO_WORKTREE ;
 int bitflipped_and_reversed_data ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_data (TYPE_1__*,int *,TYPE_1__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char*,int ,int ) ;
 int memcmp (int ,int ,int ) ;
 int strlen (int ) ;
 int workdir_data ;

void test_filter_custom__to_workdir(void)
{
 git_filter_list *fl;
 git_buf out = { 0 };
 git_buf in = GIT_BUF_INIT_CONST(
  bitflipped_and_reversed_data, BITFLIPPED_AND_REVERSED_DATA_LEN);

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "herofile", GIT_FILTER_TO_WORKTREE, 0));

 cl_git_pass(git_filter_list_apply_to_data(&out, fl, &in));

 cl_assert_equal_i(strlen(workdir_data), out.size);

 cl_assert_equal_i(
  0, memcmp(workdir_data, out.ptr, out.size));

 git_filter_list_free(fl);
 git_buf_dispose(&out);
}
