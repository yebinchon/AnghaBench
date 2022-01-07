
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,int ) ;
 int test_string ;
 int test_string_x2 ;

void test_core_buffer__0(void)
{
 git_buf buf = GIT_BUF_INIT;

 cl_assert(buf.size == 0);

 git_buf_puts(&buf, test_string);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(test_string, git_buf_cstr(&buf));

 git_buf_puts(&buf, test_string);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(test_string_x2, git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
