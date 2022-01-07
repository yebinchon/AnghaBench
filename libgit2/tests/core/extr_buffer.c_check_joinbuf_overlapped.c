
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,char,scalar_t__,char const*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,char const*) ;

__attribute__((used)) static void
check_joinbuf_overlapped(
 const char *oldval,
 int ofs_a,
 const char *b,
 const char *expected)
{
 char sep = '/';
 git_buf buf = GIT_BUF_INIT;

 git_buf_sets(&buf, oldval);
 git_buf_join(&buf, sep, buf.ptr + ofs_a, b);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
