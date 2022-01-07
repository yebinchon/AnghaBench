
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int certificate_check; } ;
struct TYPE_9__ {TYPE_1__ callbacks; } ;
typedef TYPE_2__ git_fetch_options ;
typedef int git_clone_options ;
struct TYPE_10__ {int checkout_strategy; } ;
typedef TYPE_3__ git_checkout_options ;
struct TYPE_11__ {TYPE_2__ fetch_opts; TYPE_3__ checkout_opts; int version; } ;


 TYPE_3__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_CLONE_OPTIONS_VERSION ;
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ;
 scalar_t__ _orig_proxies_need_reset ;
 void* _remote_pass ;
 void* _remote_proxy_host ;
 void* _remote_proxy_pass ;
 void* _remote_proxy_scheme ;
 void* _remote_proxy_selfsigned ;
 void* _remote_proxy_user ;
 void* _remote_ssh_fingerprint ;
 void* _remote_ssh_passphrase ;
 void* _remote_ssh_privkey ;
 void* _remote_ssh_pubkey ;
 void* _remote_sslnoverify ;
 void* _remote_url ;
 void* _remote_user ;
 void* cl_getenv (char*) ;
 TYPE_4__ g_options ;
 int * g_repo ;
 int memset (TYPE_4__*,int ,int) ;
 int ssl_cert ;

void test_online_clone__initialize(void)
{
 git_checkout_options dummy_opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_fetch_options dummy_fetch = GIT_FETCH_OPTIONS_INIT;

 g_repo = ((void*)0);

 memset(&g_options, 0, sizeof(git_clone_options));
 g_options.version = GIT_CLONE_OPTIONS_VERSION;
 g_options.checkout_opts = dummy_opts;
 g_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 g_options.fetch_opts = dummy_fetch;
 g_options.fetch_opts.callbacks.certificate_check = ssl_cert;

 _remote_url = cl_getenv("GITTEST_REMOTE_URL");
 _remote_user = cl_getenv("GITTEST_REMOTE_USER");
 _remote_pass = cl_getenv("GITTEST_REMOTE_PASS");
 _remote_sslnoverify = cl_getenv("GITTEST_REMOTE_SSL_NOVERIFY");
 _remote_ssh_pubkey = cl_getenv("GITTEST_REMOTE_SSH_PUBKEY");
 _remote_ssh_privkey = cl_getenv("GITTEST_REMOTE_SSH_KEY");
 _remote_ssh_passphrase = cl_getenv("GITTEST_REMOTE_SSH_PASSPHRASE");
 _remote_ssh_fingerprint = cl_getenv("GITTEST_REMOTE_SSH_FINGERPRINT");
 _remote_proxy_scheme = cl_getenv("GITTEST_REMOTE_PROXY_SCHEME");
 _remote_proxy_host = cl_getenv("GITTEST_REMOTE_PROXY_HOST");
 _remote_proxy_user = cl_getenv("GITTEST_REMOTE_PROXY_USER");
 _remote_proxy_pass = cl_getenv("GITTEST_REMOTE_PROXY_PASS");
 _remote_proxy_selfsigned = cl_getenv("GITTEST_REMOTE_PROXY_SELFSIGNED");

 _orig_proxies_need_reset = 0;
}
