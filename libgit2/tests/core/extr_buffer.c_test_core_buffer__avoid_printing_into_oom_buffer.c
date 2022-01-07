
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int asize; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int git_buf__oom ;
 int git_buf_puts (TYPE_1__*,char*) ;

void test_core_buffer__avoid_printing_into_oom_buffer(void)
{
 git_buf buf = GIT_BUF_INIT;


 buf.asize = 8;
 buf.ptr = git_buf__oom;
 cl_git_fail(git_buf_puts(&buf, "foobar"));
}
