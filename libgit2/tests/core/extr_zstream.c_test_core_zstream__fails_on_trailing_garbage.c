
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_putc (TYPE_1__*,char) ;
 int git_zstream_deflatebuf (TYPE_1__*,char*,int) ;
 int git_zstream_inflatebuf (TYPE_1__*,int ,int ) ;

void test_core_zstream__fails_on_trailing_garbage(void)
{
 git_buf deflated = GIT_BUF_INIT, inflated = GIT_BUF_INIT;
 char i = 0;


 git_zstream_deflatebuf(&deflated, "foobar!!", 8);


 for (i = 0; i < 10; i++) {
  git_buf_putc(&deflated, i);
 }

 cl_git_fail(git_zstream_inflatebuf(&inflated, deflated.ptr, deflated.size));

 git_buf_dispose(&deflated);
 git_buf_dispose(&inflated);
}
