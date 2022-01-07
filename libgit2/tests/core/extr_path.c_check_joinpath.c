
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
 int git_buf_joinpath (TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static void
check_joinpath(const char *path_a, const char *path_b, const char *expected_path)
{
 git_buf joined_path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&joined_path, path_a, path_b));
 cl_assert_equal_s(expected_path, joined_path.ptr);

 git_buf_dispose(&joined_path);
}
