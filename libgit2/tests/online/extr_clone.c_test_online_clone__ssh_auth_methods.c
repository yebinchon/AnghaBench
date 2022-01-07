
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* payload; int * certificate_check; int credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int GIT_EUSER ;
 char* SSH_REPO_URL ;
 int check_ssh_auth_methods ;
 int cl_git_fail_with (int ,int ) ;
 int clar__skip () ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_3__*) ;

void test_online_clone__ssh_auth_methods(void)
{
 int with_user;


 clar__skip();

 g_options.fetch_opts.callbacks.credentials = check_ssh_auth_methods;
 g_options.fetch_opts.callbacks.payload = &with_user;
 g_options.fetch_opts.callbacks.certificate_check = ((void*)0);

 with_user = 0;
 cl_git_fail_with(GIT_EUSER,
  git_clone(&g_repo, SSH_REPO_URL, "./foo", &g_options));

 with_user = 1;
 cl_git_fail_with(GIT_EUSER,
  git_clone(&g_repo, "ssh://git@github.com/libgit2/TestGitRepository", "./foo", &g_options));
}
