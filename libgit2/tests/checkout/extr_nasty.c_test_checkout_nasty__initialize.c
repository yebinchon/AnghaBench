
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_OPTIONS_VERSION ;
 int GIT_INIT_STRUCTURE (TYPE_1__*,int ) ;
 TYPE_1__ checkout_opts ;
 int cl_git_sandbox_init (int ) ;
 int repo ;
 int repo_name ;

void test_checkout_nasty__initialize(void)
{
 repo = cl_git_sandbox_init(repo_name);

 GIT_INIT_STRUCTURE(&checkout_opts, GIT_CHECKOUT_OPTIONS_VERSION);
 checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
}
