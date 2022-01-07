
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_SUBMODULE_RECURSE_NO ;
 int GIT_SUBMODULE_RECURSE_ONDEMAND ;
 int GIT_SUBMODULE_RECURSE_YES ;
 int assert_recurse_change (int ) ;

void test_submodule_modify__set_fetch_recurse_submodules(void)
{
 assert_recurse_change(GIT_SUBMODULE_RECURSE_YES);
 assert_recurse_change(GIT_SUBMODULE_RECURSE_NO);
 assert_recurse_change(GIT_SUBMODULE_RECURSE_ONDEMAND);
}
