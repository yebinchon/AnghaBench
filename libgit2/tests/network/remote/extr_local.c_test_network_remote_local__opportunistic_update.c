
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_reference ;


 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_remote_create (int *,int ,char*,int ) ;
 int git_remote_fetch (int ,TYPE_1__*,int *,int *) ;
 int remote ;
 int repo ;

void test_network_remote_local__opportunistic_update(void)
{
 git_reference *ref;
 char *refspec_strings[] = {
  "master",
 };
 git_strarray array = {
  refspec_strings,
  1,
 };


 cl_git_pass(git_remote_create(&remote, repo, "origin", cl_git_fixture_url("testrepo.git")));

 cl_git_pass(git_remote_fetch(remote, &array, ((void*)0), ((void*)0)));


 cl_git_pass(git_reference_lookup(&ref, repo, "refs/remotes/origin/master"));
 git_reference_free(ref);
}
