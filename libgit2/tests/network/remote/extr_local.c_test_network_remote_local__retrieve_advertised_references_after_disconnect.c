
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_head ;


 int cl_assert_equal_i (size_t,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (int ) ;
 int git_remote_disconnect (int ) ;
 int git_remote_ls (int const***,size_t*,int ) ;
 int remote ;

void test_network_remote_local__retrieve_advertised_references_after_disconnect(void)
{
 const git_remote_head **refs;
 size_t refs_len;

 connect_to_local_repository(cl_fixture("testrepo.git"));
 git_remote_disconnect(remote);

 cl_git_pass(git_remote_ls(&refs, &refs_len, remote));

 cl_assert_equal_i(refs_len, 29);
}
