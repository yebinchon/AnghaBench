
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int message; } ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int g_repo ;
 TYPE_1__* git_error_last () ;
 int git_reference_dwim (int **,int ,char*) ;

void test_refs_lookup__dwim_notfound(void)
{
 git_reference *ref;

 cl_git_fail_with(GIT_ENOTFOUND, git_reference_dwim(&ref, g_repo, "idontexist"));
 cl_assert_equal_s("no reference found for shorthand 'idontexist'", git_error_last()->message);
}
