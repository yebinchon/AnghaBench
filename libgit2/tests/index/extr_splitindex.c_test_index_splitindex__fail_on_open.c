
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_2__ {int message; } ;


 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail_with (int,int ) ;
 int g_repo ;
 TYPE_1__* git_error_last () ;
 int git_repository_index (int **,int ) ;

void test_index_splitindex__fail_on_open(void)
{
 git_index *idx;
 cl_git_fail_with(-1, git_repository_index(&idx, g_repo));
 cl_assert_equal_s(git_error_last()->message, "unsupported mandatory extension: 'link'");
}
