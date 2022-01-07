
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* name; int repo; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef TYPE_2__ git_config_entry ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int assert (TYPE_1__*) ;
 int git__getenv (int *,char*) ;
 char* git__strdup (scalar_t__) ;
 char* git_buf_cstr (int *) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,scalar_t__*) ;
 int git_config__lookup_entry (TYPE_2__**,int *,char*,int) ;
 int git_config_entry_free (TYPE_2__*) ;
 int git_error_clear () ;
 int git_repository_config__weakptr (int **,int ) ;

int git_remote__get_http_proxy(git_remote *remote, bool use_ssl, char **proxy_url)
{
 git_config *cfg;
 git_config_entry *ce = ((void*)0);
 git_buf val = GIT_BUF_INIT;
 int error;

 assert(remote);

 if (!proxy_url || !remote->repo)
  return -1;

 *proxy_url = ((void*)0);

 if ((error = git_repository_config__weakptr(&cfg, remote->repo)) < 0)
  return error;





 if (remote->name && remote->name[0]) {
  git_buf buf = GIT_BUF_INIT;

  if ((error = git_buf_printf(&buf, "remote.%s.proxy", remote->name)) < 0)
   return error;

  error = git_config__lookup_entry(&ce, cfg, git_buf_cstr(&buf), 0);
  git_buf_dispose(&buf);

  if (error < 0)
   return error;

  if (ce && ce->value) {
   *proxy_url = git__strdup(ce->value);
   goto found;
  }
 }


 if ((error = git_config__lookup_entry(&ce, cfg, "http.proxy", 0)) < 0)
  return error;

 if (ce && ce->value) {
  *proxy_url = git__strdup(ce->value);
  goto found;
 }


 error = git__getenv(&val, use_ssl ? "https_proxy" : "http_proxy");


 if (error == GIT_ENOTFOUND)
  error = git__getenv(&val, use_ssl ? "HTTPS_PROXY" : "HTTP_PROXY");

 if (error < 0) {
  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   error = 0;
  }

  return error;
 }

 *proxy_url = git_buf_detach(&val);

found:
 GIT_ERROR_CHECK_ALLOC(*proxy_url);
 git_config_entry_free(ce);

 return 0;
}
