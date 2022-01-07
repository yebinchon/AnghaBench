
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_fetch_options ;
typedef int git_clone_options ;
struct TYPE_3__ {int fetch_opts; int version; } ;


 int GIT_CLONE_OPTIONS_VERSION ;
 int GIT_FETCH_OPTIONS_INIT ;
 TYPE_1__ g_options ;
 int * g_repo ;
 int memset (TYPE_1__*,int ,int) ;

void test_online_fetchhead__initialize(void)
{
 git_fetch_options dummy_fetch = GIT_FETCH_OPTIONS_INIT;
 g_repo = ((void*)0);

 memset(&g_options, 0, sizeof(git_clone_options));
 g_options.version = GIT_CLONE_OPTIONS_VERSION;
 g_options.fetch_opts = dummy_fetch;
}
