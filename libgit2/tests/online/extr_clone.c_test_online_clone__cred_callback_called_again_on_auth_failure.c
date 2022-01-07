
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t* payload; int credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int GIT_EUSER ;
 int _remote_url ;
 int _remote_user ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_git_fail_with (int ,int ) ;
 int cred_count_calls_cb ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git__free (int ) ;
 int git__strdup (char*) ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;

void test_online_clone__cred_callback_called_again_on_auth_failure(void)
{
 size_t counter = 0;

 git__free(_remote_url);
 git__free(_remote_user);

 _remote_url = git__strdup("https://gitlab.com/libgit2/non-existent");
 _remote_user = git__strdup("libgit2test");

 g_options.fetch_opts.callbacks.credentials = cred_count_calls_cb;
 g_options.fetch_opts.callbacks.payload = &counter;

 cl_git_fail_with(GIT_EUSER, git_clone(&g_repo, _remote_url, "./foo", &g_options));
 cl_assert_equal_i(3, counter);
}
