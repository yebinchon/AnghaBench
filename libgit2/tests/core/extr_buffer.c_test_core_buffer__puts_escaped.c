
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_text_puts_escape_regex (TYPE_1__*,char*) ;
 int git_buf_text_puts_escaped (TYPE_1__*,char*,char*,char*) ;

void test_core_buffer__puts_escaped(void)
{
 git_buf a = GIT_BUF_INIT;

 git_buf_clear(&a);
 cl_git_pass(git_buf_text_puts_escaped(&a, "this is a test", "", ""));
 cl_assert_equal_s("this is a test", a.ptr);

 git_buf_clear(&a);
 cl_git_pass(git_buf_text_puts_escaped(&a, "this is a test", "t", "\\"));
 cl_assert_equal_s("\\this is a \\tes\\t", a.ptr);

 git_buf_clear(&a);
 cl_git_pass(git_buf_text_puts_escaped(&a, "this is a test", "i ", "__"));
 cl_assert_equal_s("th__is__ __is__ a__ test", a.ptr);

 git_buf_clear(&a);
 cl_git_pass(git_buf_text_puts_escape_regex(&a, "^match\\s*[A-Z]+.*"));
 cl_assert_equal_s("\\^match\\\\s\\*\\[A-Z\\]\\+\\.\\*", a.ptr);

 git_buf_dispose(&a);
}
