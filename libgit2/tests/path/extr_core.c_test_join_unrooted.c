
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_path_join_unrooted (TYPE_1__*,char const*,char const*,int *) ;

__attribute__((used)) static void test_join_unrooted(
 const char *expected_result,
 ssize_t expected_rootlen,
 const char *path,
 const char *base)
{
 git_buf result = GIT_BUF_INIT;
 ssize_t root_at;

 cl_git_pass(git_path_join_unrooted(&result, path, base, &root_at));
 cl_assert_equal_s(expected_result, result.ptr);
 cl_assert_equal_i(expected_rootlen, root_at);

 git_buf_dispose(&result);
}
