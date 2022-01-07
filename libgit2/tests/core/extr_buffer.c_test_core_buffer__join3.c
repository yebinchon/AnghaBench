
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join3 (TYPE_1__*,char,char*,char*,char*) ;

void test_core_buffer__join3(void)
{
 git_buf a = GIT_BUF_INIT;

 cl_git_pass(git_buf_join3(&a, '/', "test", "string", "join"));
 cl_assert_equal_s("test/string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "test/", "string", "join"));
 cl_assert_equal_s("test/string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "test/", "/string", "join"));
 cl_assert_equal_s("test/string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "test/", "/string/", "join"));
 cl_assert_equal_s("test/string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "test/", "/string/", "/join"));
 cl_assert_equal_s("test/string/join", a.ptr);

 cl_git_pass(git_buf_join3(&a, '/', "", "string", "join"));
 cl_assert_equal_s("string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "", "string/", "join"));
 cl_assert_equal_s("string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "", "string/", "/join"));
 cl_assert_equal_s("string/join", a.ptr);

 cl_git_pass(git_buf_join3(&a, '/', "string", "", "join"));
 cl_assert_equal_s("string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "string/", "", "join"));
 cl_assert_equal_s("string/join", a.ptr);
 cl_git_pass(git_buf_join3(&a, '/', "string/", "", "/join"));
 cl_assert_equal_s("string/join", a.ptr);

 git_buf_dispose(&a);
}
