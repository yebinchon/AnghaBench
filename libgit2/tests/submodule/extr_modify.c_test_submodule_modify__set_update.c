
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_SUBMODULE_UPDATE_CHECKOUT ;
 int GIT_SUBMODULE_UPDATE_NONE ;
 int GIT_SUBMODULE_UPDATE_REBASE ;
 int assert_update_change (int ) ;

void test_submodule_modify__set_update(void)
{
 assert_update_change(GIT_SUBMODULE_UPDATE_REBASE);
 assert_update_change(GIT_SUBMODULE_UPDATE_NONE);
 assert_update_change(GIT_SUBMODULE_UPDATE_CHECKOUT);
}
