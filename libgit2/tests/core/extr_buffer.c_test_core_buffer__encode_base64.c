
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_encode_base64 (TYPE_1__*,char*,int) ;

void test_core_buffer__encode_base64(void)
{
 git_buf buf = GIT_BUF_INIT;
 cl_git_pass(git_buf_encode_base64(&buf, "this", 4));
 cl_assert_equal_s("dGhpcw==", buf.ptr);

 git_buf_clear(&buf);
 cl_git_pass(git_buf_encode_base64(&buf, "this!", 5));
 cl_assert_equal_s("dGhpcyE=", buf.ptr);

 git_buf_clear(&buf);
 cl_git_pass(git_buf_encode_base64(&buf, "this!\n", 6));
 cl_assert_equal_s("dGhpcyEK", buf.ptr);

 git_buf_dispose(&buf);
}
