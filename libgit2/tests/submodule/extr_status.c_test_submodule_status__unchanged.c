
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 unsigned int GIT_SUBMODULE_STATUS_IN_HEAD ;
 unsigned int GIT_SUBMODULE_STATUS_IN_INDEX ;
 unsigned int GIT_SUBMODULE_STATUS_IN_WD ;
 int GIT_SUBMODULE_STATUS_IS_UNMODIFIED (unsigned int) ;
 int cl_assert (int) ;
 int g_repo ;
 unsigned int get_submodule_status (int ,char*) ;

void test_submodule_status__unchanged(void)
{
 unsigned int status = get_submodule_status(g_repo, "sm_unchanged");
 unsigned int expected =
  GIT_SUBMODULE_STATUS_IN_HEAD |
  GIT_SUBMODULE_STATUS_IN_INDEX |
  GIT_SUBMODULE_STATUS_IN_CONFIG |
  GIT_SUBMODULE_STATUS_IN_WD;

 cl_assert(GIT_SUBMODULE_STATUS_IS_UNMODIFIED(status));
 cl_assert(expected == status);
}
