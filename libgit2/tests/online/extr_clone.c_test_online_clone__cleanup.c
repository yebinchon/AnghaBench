
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _orig_http_proxy ;
 int _orig_https_proxy ;
 scalar_t__ _orig_proxies_need_reset ;
 int _remote_pass ;
 int _remote_proxy_host ;
 int _remote_proxy_pass ;
 int _remote_proxy_scheme ;
 int _remote_proxy_selfsigned ;
 int _remote_proxy_user ;
 int _remote_ssh_fingerprint ;
 int _remote_ssh_passphrase ;
 int _remote_ssh_privkey ;
 int _remote_ssh_pubkey ;
 int _remote_sslnoverify ;
 int _remote_url ;
 int _remote_user ;
 int cl_fixture_cleanup (char*) ;
 int cl_setenv (char*,int ) ;
 int * g_repo ;
 int git__free (int ) ;
 int git_repository_free (int *) ;

void test_online_clone__cleanup(void)
{
 if (g_repo) {
  git_repository_free(g_repo);
  g_repo = ((void*)0);
 }
 cl_fixture_cleanup("./foo");

 git__free(_remote_url);
 git__free(_remote_user);
 git__free(_remote_pass);
 git__free(_remote_sslnoverify);
 git__free(_remote_ssh_pubkey);
 git__free(_remote_ssh_privkey);
 git__free(_remote_ssh_passphrase);
 git__free(_remote_ssh_fingerprint);
 git__free(_remote_proxy_scheme);
 git__free(_remote_proxy_host);
 git__free(_remote_proxy_user);
 git__free(_remote_proxy_pass);
 git__free(_remote_proxy_selfsigned);

 if (_orig_proxies_need_reset) {
  cl_setenv("HTTP_PROXY", _orig_http_proxy);
  cl_setenv("HTTPS_PROXY", _orig_https_proxy);

  git__free(_orig_http_proxy);
  git__free(_orig_https_proxy);
 }
}
