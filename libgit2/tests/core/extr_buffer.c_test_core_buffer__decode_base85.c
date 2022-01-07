
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
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_decode_base85 (TYPE_1__*,char*,int,int) ;
 int git_buf_dispose (TYPE_1__*) ;

void test_core_buffer__decode_base85(void)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_decode_base85(&buf, "bZBXF", 5, 4));
 cl_assert_equal_sz(4, buf.size);
 cl_assert_equal_s("this", buf.ptr);
 git_buf_clear(&buf);

 cl_git_pass(git_buf_decode_base85(&buf, "ba!tca&BaE", 10, 8));
 cl_assert_equal_sz(8, buf.size);
 cl_assert_equal_s("two rnds", buf.ptr);
 git_buf_clear(&buf);

 cl_git_pass(git_buf_decode_base85(&buf, "bZBXFAZc?TVqtS-AUHK3Wo~0{WMyOk", 30, 23));
 cl_assert_equal_sz(23, buf.size);
 cl_assert_equal_s("this is base 85 encoded", buf.ptr);
 git_buf_clear(&buf);

 git_buf_dispose(&buf);
}
