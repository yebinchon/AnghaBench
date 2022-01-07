
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


 int _remote_url ;
 int _remote_user ;
 int cl_git_fail_with (int,int ) ;
 int cred_failure_cb ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git__free (int ) ;
 int git__strdup (char*) ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;

void test_online_clone__cred_callback_failure_return_code_is_tunnelled(void)
{
 git__free(_remote_url);
 git__free(_remote_user);

 _remote_url = git__strdup("https://github.com/libgit2/non-existent");
 _remote_user = git__strdup("libgit2test");

 g_options.fetch_opts.callbacks.credentials = cred_failure_cb;

 cl_git_fail_with(-172, git_clone(&g_repo, _remote_url, "./foo", &g_options));
}
