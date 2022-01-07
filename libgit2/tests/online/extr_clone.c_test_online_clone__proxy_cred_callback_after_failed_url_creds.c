
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_9__ {int certificate_check; int credentials; int url; int type; } ;
struct TYPE_10__ {TYPE_1__ proxy_opts; } ;
struct TYPE_12__ {TYPE_2__ fetch_opts; } ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_PROXY_SPECIFIED ;
 int _remote_proxy_host ;
 int _remote_proxy_pass ;
 char* _remote_proxy_scheme ;
 int _remote_proxy_user ;
 scalar_t__ called_proxy_creds ;
 int cl_assert (scalar_t__) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 TYPE_4__ g_options ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_printf (TYPE_3__*,char*,char*,int ) ;
 int git_clone (int *,char*,char*,TYPE_4__*) ;
 int proxy_cert_cb ;
 int proxy_cred_cb ;

void test_online_clone__proxy_cred_callback_after_failed_url_creds(void)
{
 git_buf url = GIT_BUF_INIT;

 if (!_remote_proxy_host || !_remote_proxy_user || !_remote_proxy_pass)
  cl_skip();

 cl_git_pass(git_buf_printf(&url, "%s://invalid_user_name:INVALID_pass_WORD@%s/",
  _remote_proxy_scheme ? _remote_proxy_scheme : "http",
  _remote_proxy_host));

 g_options.fetch_opts.proxy_opts.type = GIT_PROXY_SPECIFIED;
 g_options.fetch_opts.proxy_opts.url = url.ptr;
 g_options.fetch_opts.proxy_opts.credentials = proxy_cred_cb;
 g_options.fetch_opts.proxy_opts.certificate_check = proxy_cert_cb;
 called_proxy_creds = 0;
 cl_git_pass(git_clone(&g_repo, "http://github.com/libgit2/TestGitRepository", "./foo", &g_options));
 cl_assert(called_proxy_creds);

 git_buf_dispose(&url);
}
