
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
struct TYPE_5__ {int* payload; int sideband_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
typedef TYPE_2__ git_fetch_options ;


 TYPE_2__ GIT_FETCH_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int ,char*) ;
 int cleanup_local_repo ;
 int git_remote_create_with_fetchspec (int **,int *,char*,int ,char*) ;
 int git_remote_fetch (int *,int *,TYPE_2__*,int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int sideband_cb ;

void test_network_fetchlocal__call_progress(void)
{
 git_repository *repo;
 git_remote *remote;
 git_fetch_options options = GIT_FETCH_OPTIONS_INIT;
 int callcount = 0;

 cl_git_pass(git_repository_init(&repo, "foo.git", 1));
 cl_set_cleanup(cleanup_local_repo, "foo.git");

 cl_git_pass(git_remote_create_with_fetchspec(&remote, repo, "origin", cl_git_fixture_url("testrepo.git"), "+refs/heads/*:refs/heads/*"));

 options.callbacks.sideband_progress = sideband_cb;
 options.callbacks.payload = &callcount;

 cl_git_pass(git_remote_fetch(remote, ((void*)0), &options, ((void*)0)));
 cl_assert(callcount != 0);

 git_remote_free(remote);
 git_repository_free(repo);
}
