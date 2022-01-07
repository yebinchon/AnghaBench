
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_filter_list ;
struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int DATA_LEN ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILTER_TO_ODB ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,char*,int ) ;
 int git_filter_list_apply_to_data (TYPE_1__*,int *,TYPE_1__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char*,int ,int ) ;
 scalar_t__ input ;
 int memcmp (scalar_t__,int ,int ) ;

void test_filter_wildcard__none(void)
{
 git_filter_list *fl;
 git_buf in = GIT_BUF_INIT, out = GIT_BUF_INIT;

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "none-foo", GIT_FILTER_TO_ODB, 0));

 cl_git_pass(git_buf_put(&in, (char *)input, DATA_LEN));
 cl_git_pass(git_filter_list_apply_to_data(&out, fl, &in));

 cl_assert_equal_i(DATA_LEN, out.size);

 cl_assert_equal_i(
  0, memcmp(input, out.ptr, out.size));

 git_filter_list_free(fl);
 git_buf_dispose(&out);
 git_buf_dispose(&in);
}
