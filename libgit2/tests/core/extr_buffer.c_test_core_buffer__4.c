
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int git_buf_consume (TYPE_1__*,char*) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 size_t strlen (int ) ;

void test_core_buffer__4(void)
{
 git_buf buf = GIT_BUF_INIT;
 int i;

 for (i = 0; i < 10; ++i) {
  git_buf_puts(&buf, "1234");
  cl_assert(git_buf_oom(&buf) == 0);
  git_buf_consume(&buf, buf.ptr + 2);
  cl_assert(strlen(git_buf_cstr(&buf)) == (size_t)((i + 1) * 2));
 }

 cl_assert_equal_s("12341234123412341234", git_buf_cstr(&buf));

 git_buf_consume(&buf, ((void*)0));
 cl_assert_equal_s("12341234123412341234", git_buf_cstr(&buf));

 git_buf_consume(&buf, "invalid pointer");
 cl_assert_equal_s("12341234123412341234", git_buf_cstr(&buf));

 git_buf_consume(&buf, buf.ptr);
 cl_assert_equal_s("12341234123412341234", git_buf_cstr(&buf));

 git_buf_consume(&buf, buf.ptr + 1);
 cl_assert_equal_s("2341234123412341234", git_buf_cstr(&buf));

 git_buf_consume(&buf, buf.ptr + buf.size);
 cl_assert_equal_s("", git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
