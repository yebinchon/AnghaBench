
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_sets (TYPE_1__*,char const*) ;
 int git_path_resolve_relative (TYPE_1__*,int ) ;

__attribute__((used)) static void assert_resolve_relative(
 git_buf *buf, const char *expected, const char *path)
{
 cl_git_pass(git_buf_sets(buf, path));
 cl_git_pass(git_path_resolve_relative(buf, 0));
 cl_assert_equal_s(expected, buf->ptr);
}
