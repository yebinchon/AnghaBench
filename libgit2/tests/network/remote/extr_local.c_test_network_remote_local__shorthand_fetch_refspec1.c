
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_reference ;


 int cl_fixture (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (int ) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_remote_fetch (int ,TYPE_1__*,int *,int *) ;
 int remote ;
 int repo ;

void test_network_remote_local__shorthand_fetch_refspec1(void)
{
 char *refspec_strings[] = {
  "master",
  "hard_tag",
 };
 git_strarray array = {
  refspec_strings,
  2,
 };

 git_reference *ref;

 connect_to_local_repository(cl_fixture("testrepo.git"));

 cl_git_pass(git_remote_fetch(remote, &array, ((void*)0), ((void*)0)));

 cl_git_fail(git_reference_lookup(&ref, repo, "refs/remotes/origin/master"));
 cl_git_fail(git_reference_lookup(&ref, repo, "refs/tags/hard_tag"));
}
