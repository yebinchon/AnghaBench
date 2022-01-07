
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EUNBORNBRANCH ;
 int NON_EXISTING_HEAD ;
 int cl_assert_equal_i (int ,int ) ;
 int g_repo ;
 int git_checkout_head (int ,int *) ;
 int make_head_unborn (int ,int ) ;

void test_checkout_head__unborn_head_returns_GIT_EUNBORNBRANCH(void)
{
 make_head_unborn(g_repo, NON_EXISTING_HEAD);

 cl_assert_equal_i(GIT_EUNBORNBRANCH, git_checkout_head(g_repo, ((void*)0)));
}
