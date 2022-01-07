
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_fetch_options ;
typedef int git_clone_options ;
struct TYPE_5__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
struct TYPE_6__ {int fetch_opts; TYPE_1__ checkout_opts; int version; } ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_CLONE_OPTIONS_VERSION ;
 int GIT_FETCH_OPTIONS_INIT ;
 TYPE_2__ g_options ;
 int * g_repo ;
 int memset (TYPE_2__*,int ,int) ;

void test_clone_nonetwork__initialize(void)
{
 git_checkout_options dummy_opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_fetch_options dummy_fetch = GIT_FETCH_OPTIONS_INIT;

 g_repo = ((void*)0);

 memset(&g_options, 0, sizeof(git_clone_options));
 g_options.version = GIT_CLONE_OPTIONS_VERSION;
 g_options.checkout_opts = dummy_opts;
 g_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 g_options.fetch_opts = dummy_fetch;
}
