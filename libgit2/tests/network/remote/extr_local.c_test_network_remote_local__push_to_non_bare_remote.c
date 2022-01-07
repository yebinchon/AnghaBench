
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_fetch_options ;


 int GIT_DIRECTION_PUSH ;
 int GIT_EBAREREPO ;
 int GIT_FETCH_OPTIONS_INIT ;
 int cl_fixture (char*) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (int ) ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_create_anonymous (int **,int ,char*) ;
 int git_remote_fetch (int ,TYPE_1__*,int *,int *) ;
 int git_remote_free (int *) ;
 int git_remote_upload (int *,int *,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;
 int push_array ;
 int remote ;
 int repo ;

void test_network_remote_local__push_to_non_bare_remote(void)
{
 char *refspec_strings[] = {
  "master:master",
 };
 git_strarray array = {
  refspec_strings,
  1,
 };

 git_remote *localremote;
 git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;


 connect_to_local_repository(cl_fixture("testrepo.git"));
 cl_git_pass(git_remote_fetch(remote, &array, &fetch_opts, ((void*)0)));


 {
  git_repository *remoterepo = ((void*)0);
  cl_git_pass(git_repository_init(&remoterepo, "localnonbare", 0));
  git_repository_free(remoterepo);
 }


 cl_git_pass(git_remote_create_anonymous(&localremote, repo, "./localnonbare"));
 cl_git_pass(git_remote_connect(localremote, GIT_DIRECTION_PUSH, ((void*)0), ((void*)0), ((void*)0)));


 cl_git_fail_with(GIT_EBAREREPO, git_remote_upload(localremote, &push_array, ((void*)0)));


 git_remote_free(localremote);
 cl_fixture_cleanup("localbare.git");
}
