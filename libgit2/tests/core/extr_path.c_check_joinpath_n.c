
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join_n (TYPE_1__*,char,int,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void
check_joinpath_n(
 const char *path_a,
 const char *path_b,
 const char *path_c,
 const char *path_d,
 const char *expected_path)
{
 git_buf joined_path = GIT_BUF_INIT;

 cl_git_pass(git_buf_join_n(&joined_path, '/', 4,
          path_a, path_b, path_c, path_d));
 cl_assert_equal_s(expected_path, joined_path.ptr);

 git_buf_dispose(&joined_path);
}
