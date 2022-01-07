
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_path_make_relative (TYPE_1__*,char const*) ;

__attribute__((used)) static void test_make_relative(
 const char *expected_path,
 const char *path,
 const char *parent,
 int expected_status)
{
 git_buf buf = GIT_BUF_INIT;
 git_buf_puts(&buf, path);
 cl_assert_equal_i(expected_status, git_path_make_relative(&buf, parent));
 cl_assert_equal_s(expected_path, buf.ptr);
 git_buf_dispose(&buf);
}
