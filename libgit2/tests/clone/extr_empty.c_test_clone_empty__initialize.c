
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_fetch_options ;
typedef int git_clone_options ;
struct TYPE_3__ {int fetch_opts; int version; } ;


 int GIT_CLONE_OPTIONS_VERSION ;
 int GIT_FETCH_OPTIONS_INIT ;
 int cl_git_remove_placeholders (int ,char*) ;
 int * cl_git_sandbox_init (char*) ;
 TYPE_1__ g_options ;
 int * g_repo ;
 int git_repository_path (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void test_clone_empty__initialize(void)
{
 git_repository *sandbox = cl_git_sandbox_init("empty_bare.git");
 git_fetch_options dummy_options = GIT_FETCH_OPTIONS_INIT;
 cl_git_remove_placeholders(git_repository_path(sandbox), "dummy-marker.txt");

 g_repo = ((void*)0);

 memset(&g_options, 0, sizeof(git_clone_options));
 g_options.version = GIT_CLONE_OPTIONS_VERSION;
 g_options.fetch_opts = dummy_options;
}
