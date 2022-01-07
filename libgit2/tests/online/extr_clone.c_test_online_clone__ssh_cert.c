
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int certificate_check; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int GIT_EUSER ;
 int _remote_ssh_fingerprint ;
 int _remote_url ;
 int cl_git_fail_with (int ,int ) ;
 int cl_skip () ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;
 int ssh_certificate_check ;

void test_online_clone__ssh_cert(void)
{
 g_options.fetch_opts.callbacks.certificate_check = ssh_certificate_check;

 if (!_remote_ssh_fingerprint)
  cl_skip();

 cl_git_fail_with(GIT_EUSER, git_clone(&g_repo, _remote_url, "./foo", &g_options));
}
