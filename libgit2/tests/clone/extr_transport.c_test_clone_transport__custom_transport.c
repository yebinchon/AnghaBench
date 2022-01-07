
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int* payload; int transport; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {TYPE_2__ fetch_opts; int remote_cb; } ;
typedef TYPE_3__ git_clone_options ;


 TYPE_3__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int custom_transport ;
 int custom_transport_remote_create ;
 int git_clone (int **,int ,char*,TYPE_3__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_repository_free (int *) ;

void test_clone_transport__custom_transport(void)
{
 git_repository *repo;
 git_clone_options clone_opts = GIT_CLONE_OPTIONS_INIT;
 int custom_transport_used = 0;

 clone_opts.remote_cb = custom_transport_remote_create;
 clone_opts.fetch_opts.callbacks.transport = custom_transport;
 clone_opts.fetch_opts.callbacks.payload = &custom_transport_used;

 cl_git_pass(git_clone(&repo, cl_fixture("testrepo.git"), "./custom_transport.git", &clone_opts));
 git_repository_free(repo);

 cl_git_pass(git_futils_rmdir_r("./custom_transport.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));

 cl_assert(custom_transport_used == 1);
}
