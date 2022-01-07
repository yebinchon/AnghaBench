
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int _remote_ssh_privkey ;
 int _remote_url ;
 int _remote_user ;
 int cl_git_pass (int ) ;
 int clar__skip () ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;
 int ssh_memory_cred_cb ;
 scalar_t__ strncmp (int ,char*,int) ;

void test_online_clone__ssh_memory_auth(void)
{

 clar__skip();

 if (!_remote_url || !_remote_user || !_remote_ssh_privkey || strncmp(_remote_url, "ssh://", 5) != 0)
  clar__skip();

 g_options.fetch_opts.callbacks.credentials = ssh_memory_cred_cb;

 cl_git_pass(git_clone(&g_repo, _remote_url, "./foo", &g_options));
}
