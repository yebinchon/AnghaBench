
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _record_cbs_data ;
 int * _remote ;
 int _remote_default ;
 int _remote_pass ;
 int _remote_ssh_key ;
 int _remote_ssh_passphrase ;
 int _remote_ssh_pubkey ;
 int _remote_url ;
 int _remote_user ;
 int * _repo ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_sandbox_cleanup () ;
 int git__free (int ) ;
 int git_remote_free (int *) ;
 int record_callbacks_data_clear (int *) ;

void test_online_push__cleanup(void)
{
 if (_remote)
  git_remote_free(_remote);
 _remote = ((void*)0);

 git__free(_remote_url);
 git__free(_remote_user);
 git__free(_remote_pass);
 git__free(_remote_ssh_key);
 git__free(_remote_ssh_pubkey);
 git__free(_remote_ssh_passphrase);
 git__free(_remote_default);


 _repo = ((void*)0);

 record_callbacks_data_clear(&_record_cbs_data);

 cl_fixture_cleanup("testrepo.git");
 cl_git_sandbox_cleanup();
}
