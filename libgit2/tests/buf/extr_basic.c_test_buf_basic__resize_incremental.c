
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int asize; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_grow_by (TYPE_1__*,int) ;
 int git_buf_puts (TYPE_1__*,char*) ;

void test_buf_basic__resize_incremental(void)
{
 git_buf buf1 = GIT_BUF_INIT;


 cl_git_pass(git_buf_puts(&buf1, "Hello"));
 cl_assert_equal_i(5, buf1.size);
 cl_assert_equal_i(8, buf1.asize);


 cl_git_pass(git_buf_grow_by(&buf1, 1));
 cl_assert_equal_i(5, buf1.size);
 cl_assert_equal_i(8, buf1.asize);


 cl_git_pass(git_buf_grow_by(&buf1, 16));
 cl_assert_equal_i(5, buf1.size);
 cl_assert(buf1.asize > 8);

 git_buf_dispose(&buf1);
}
