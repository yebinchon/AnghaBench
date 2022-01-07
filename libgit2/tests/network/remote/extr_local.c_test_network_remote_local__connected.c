
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int connect_to_local_repository (int ) ;
 int git_remote_connected (int ) ;
 int git_remote_disconnect (int ) ;
 int remote ;

void test_network_remote_local__connected(void)
{
 connect_to_local_repository(cl_fixture("testrepo.git"));
 cl_assert(git_remote_connected(remote));

 git_remote_disconnect(remote);
 cl_assert(!git_remote_connected(remote));
}
