
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert_zlib_equal (int ,scalar_t__,int ,int ) ;
 int cl_git_pass (int ) ;
 int data ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_zstream_deflatebuf (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

void test_core_zstream__buffer(void)
{
 git_buf out = GIT_BUF_INIT;
 cl_git_pass(git_zstream_deflatebuf(&out, data, strlen(data) + 1));
 assert_zlib_equal(data, strlen(data) + 1, out.ptr, out.size);
 git_buf_dispose(&out);
}
