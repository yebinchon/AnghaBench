
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_head ;


 int cl_assert_equal_i (size_t,int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (char*) ;
 int git_remote_free (int *) ;
 int git_remote_ls (int const***,size_t*,int *) ;
 int p_rename (char*,char*) ;
 int * remote ;

void test_network_remote_local__retrieve_advertised_references_from_spaced_repository(void)
{
 const git_remote_head **refs;
 size_t refs_len;

 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(p_rename("testrepo.git", "spaced testrepo.git"));

 connect_to_local_repository("spaced testrepo.git");

 cl_git_pass(git_remote_ls(&refs, &refs_len, remote));

 cl_assert_equal_i(refs_len, 29);

 git_remote_free(remote);
 remote = ((void*)0);

 cl_fixture_cleanup("spaced testrepo.git");
}
