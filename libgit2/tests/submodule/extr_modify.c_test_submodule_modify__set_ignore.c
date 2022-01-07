
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_SUBMODULE_IGNORE_ALL ;
 int GIT_SUBMODULE_IGNORE_NONE ;
 int GIT_SUBMODULE_IGNORE_UNTRACKED ;
 int assert_ignore_change (int ) ;

void test_submodule_modify__set_ignore(void)
{
 assert_ignore_change(GIT_SUBMODULE_IGNORE_UNTRACKED);
 assert_ignore_change(GIT_SUBMODULE_IGNORE_NONE);
 assert_ignore_change(GIT_SUBMODULE_IGNORE_ALL);
}
