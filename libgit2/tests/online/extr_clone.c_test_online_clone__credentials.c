
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_3__ git_cred_userpass_payload ;
struct TYPE_6__ {TYPE_3__* payload; int credentials; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_9__ {TYPE_2__ fetch_opts; } ;


 int _remote_pass ;
 int _remote_url ;
 int _remote_user ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ cl_is_env_set (char*) ;
 int clar__skip () ;
 int cred_default ;
 TYPE_4__ g_options ;
 int * g_repo ;
 int git_clone (int **,int ,char*,TYPE_4__*) ;
 int git_cred_userpass ;
 int git_repository_free (int *) ;

void test_online_clone__credentials(void)
{



 git_cred_userpass_payload user_pass = {
  _remote_user,
  _remote_pass
 };

 if (!_remote_url)
  clar__skip();

 if (cl_is_env_set("GITTEST_REMOTE_DEFAULT")) {
  g_options.fetch_opts.callbacks.credentials = cred_default;
 } else {
  g_options.fetch_opts.callbacks.credentials = git_cred_userpass;
  g_options.fetch_opts.callbacks.payload = &user_pass;
 }

 cl_git_pass(git_clone(&g_repo, _remote_url, "./foo", &g_options));
 git_repository_free(g_repo); g_repo = ((void*)0);
 cl_fixture_cleanup("./foo");
}
