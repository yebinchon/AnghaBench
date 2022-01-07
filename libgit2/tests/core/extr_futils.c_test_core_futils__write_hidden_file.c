
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert (int) ;
 int cl_assert_equal_file (int ,int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,int ,int ) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_futils_writebuffer (TYPE_1__*,char*,int,int) ;
 int git_win32__hidden (int*,char*) ;
 int git_win32__set_hidden (char*,int) ;

void test_core_futils__write_hidden_file(void)
{

 cl_skip();
}
