
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join_n (TYPE_1__*,char,int,char*,...) ;

void test_core_buffer__10(void)
{
 git_buf a = GIT_BUF_INIT;

 cl_git_pass(git_buf_join_n(&a, '/', 1, "test"));
 cl_assert_equal_s(a.ptr, "test");
 cl_git_pass(git_buf_join_n(&a, '/', 1, "string"));
 cl_assert_equal_s(a.ptr, "test/string");
 git_buf_clear(&a);
 cl_git_pass(git_buf_join_n(&a, '/', 3, "test", "string", "join"));
 cl_assert_equal_s(a.ptr, "test/string/join");
 cl_git_pass(git_buf_join_n(&a, '/', 2, a.ptr, "more"));
 cl_assert_equal_s(a.ptr, "test/string/join/test/string/join/more");

 git_buf_dispose(&a);
}
