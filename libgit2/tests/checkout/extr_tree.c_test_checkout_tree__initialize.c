
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_OPTIONS_VERSION ;
 int GIT_INIT_STRUCTURE (TYPE_1__*,int ) ;
 int cl_git_sandbox_init (char*) ;
 TYPE_1__ g_opts ;
 int g_repo ;

void test_checkout_tree__initialize(void)
{
 g_repo = cl_git_sandbox_init("testrepo");

 GIT_INIT_STRUCTURE(&g_opts, GIT_CHECKOUT_OPTIONS_VERSION);
 g_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
}
