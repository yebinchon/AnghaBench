
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert_equal_file (int ,int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char*) ;
 int git_buf_put (TYPE_1__*,int ,int ) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_futils_writebuffer (TYPE_1__*,char*,int,int) ;

void test_core_futils__writebuffer(void)
{
 git_buf out = GIT_BUF_INIT,
  append = GIT_BUF_INIT;


 git_buf_puts(&out, "hello!\n");
 git_buf_printf(&out, "this is a %s\n", "test");

 cl_git_pass(git_futils_writebuffer(&out, "futils/test-file", O_RDWR|O_CREAT, 0666));

 cl_assert_equal_file(out.ptr, out.size, "futils/test-file");


 git_buf_puts(&append, "And some more!\n");
 git_buf_put(&out, append.ptr, append.size);

 cl_git_pass(git_futils_writebuffer(&append, "futils/test-file", O_RDWR|O_APPEND, 0666));

 cl_assert_equal_file(out.ptr, out.size, "futils/test-file");

 git_buf_dispose(&out);
 git_buf_dispose(&append);
}
