
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_PUTS (TYPE_1__*,char*) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_decode_percent (TYPE_1__*,int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_len (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void expect_decode_pass(const char *expected, const char *encoded)
{
 git_buf in = GIT_BUF_INIT, out = GIT_BUF_INIT;






 cl_git_pass(git_buf_puts(&in, encoded));
 cl_git_pass(git_buf_PUTS(&in, "TRAILER"));

 cl_git_pass(git_buf_decode_percent(&out, in.ptr, strlen(encoded)));

 cl_assert_equal_s(expected, git_buf_cstr(&out));
 cl_assert_equal_i(strlen(expected), git_buf_len(&out));

 git_buf_dispose(&in);
 git_buf_dispose(&out);
}
