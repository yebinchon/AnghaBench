
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int asize; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EINVALID ;
 int cl_assert_equal_i (scalar_t__,int ) ;
 int cl_assert_equal_p (char const*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int git_buf_attach_notowned (TYPE_1__*,char const*,scalar_t__) ;
 int git_buf_grow (TYPE_1__*,int) ;
 scalar_t__ strlen (char const*) ;

void test_core_buffer__dont_grow_borrowed(void)
{
 const char *somestring = "blah blah";
 git_buf buf = GIT_BUF_INIT;

 git_buf_attach_notowned(&buf, somestring, strlen(somestring) + 1);
 cl_assert_equal_p(somestring, buf.ptr);
 cl_assert_equal_i(0, buf.asize);
 cl_assert_equal_i(strlen(somestring) + 1, buf.size);

 cl_git_fail_with(GIT_EINVALID, git_buf_grow(&buf, 1024));
}
