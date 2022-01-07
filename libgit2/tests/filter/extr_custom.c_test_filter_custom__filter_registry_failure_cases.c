
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ git_filter ;


 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 char* GIT_FILTER_CRLF ;
 char* GIT_FILTER_IDENT ;
 int GIT_FILTER_VERSION ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int git_filter_register (char*,TYPE_1__*,int ) ;
 int git_filter_unregister (char*) ;

void test_filter_custom__filter_registry_failure_cases(void)
{
 git_filter fake = { GIT_FILTER_VERSION, 0 };

 cl_assert_equal_i(GIT_EEXISTS, git_filter_register("bitflip", &fake, 0));

 cl_git_fail(git_filter_unregister(GIT_FILTER_CRLF));
 cl_git_fail(git_filter_unregister(GIT_FILTER_IDENT));
 cl_assert_equal_i(GIT_ENOTFOUND, git_filter_unregister("not-a-filter"));
}
