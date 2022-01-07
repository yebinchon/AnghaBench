
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_fail (int ) ;
 int git_buf_decode_base85 (TYPE_1__*,char*,int,int) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;

void test_core_buffer__decode_base85_fails_gracefully(void)
{
 git_buf buf = GIT_BUF_INIT;

 git_buf_puts(&buf, "foobar");

 cl_git_fail(git_buf_decode_base85(&buf, "invalid charsZZ", 15, 42));
 cl_git_fail(git_buf_decode_base85(&buf, "invalidchars__ ", 15, 42));
 cl_git_fail(git_buf_decode_base85(&buf, "overflowZZ~~~~~", 15, 42));
 cl_git_fail(git_buf_decode_base85(&buf, "truncated", 9, 42));
 cl_assert_equal_sz(6, buf.size);
 cl_assert_equal_s("foobar", buf.ptr);

 git_buf_dispose(&buf);
}
