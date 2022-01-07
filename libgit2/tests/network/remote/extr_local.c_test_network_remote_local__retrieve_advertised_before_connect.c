
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_head ;


 int cl_fixture (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (int ) ;
 int file_path_buf ;
 int git_buf_cstr (int *) ;
 int git_buf_sets (int *,int ) ;
 int git_remote_create_anonymous (int *,int ,int ) ;
 int git_remote_ls (int const***,size_t*,int ) ;
 int remote ;
 int repo ;

void test_network_remote_local__retrieve_advertised_before_connect(void)
{
 const git_remote_head **refs;
 size_t refs_len = 0;

 git_buf_sets(&file_path_buf, cl_git_path_url(cl_fixture("testrepo.git")));

 cl_git_pass(git_remote_create_anonymous(&remote, repo, git_buf_cstr(&file_path_buf)));
 cl_git_fail(git_remote_ls(&refs, &refs_len, remote));
}
