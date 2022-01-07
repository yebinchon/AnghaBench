
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connected; int direction; int flags; int * repo; int url; int refs; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;
typedef int git_repository ;
typedef void git_proxy_options ;
typedef void const* git_cred_acquire_cb ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int GIT_UNUSED (void const*) ;
 int free_heads (int *) ;
 int git__strdup (char const*) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_from_url_or_path (int *,char const*) ;
 int git_repository_open (int **,char const*) ;
 scalar_t__ store_refs (TYPE_1__*) ;

__attribute__((used)) static int local_connect(
 git_transport *transport,
 const char *url,
 git_cred_acquire_cb cred_acquire_cb,
 void *cred_acquire_payload,
 const git_proxy_options *proxy,
 int direction, int flags)
{
 git_repository *repo;
 int error;
 transport_local *t = (transport_local *) transport;
 const char *path;
 git_buf buf = GIT_BUF_INIT;

 GIT_UNUSED(cred_acquire_cb);
 GIT_UNUSED(cred_acquire_payload);
 GIT_UNUSED(proxy);

 if (t->connected)
  return 0;

 free_heads(&t->refs);

 t->url = git__strdup(url);
 GIT_ERROR_CHECK_ALLOC(t->url);
 t->direction = direction;
 t->flags = flags;


 if ((error = git_path_from_url_or_path(&buf, url)) < 0) {
  git_buf_dispose(&buf);
  return error;
 }
 path = git_buf_cstr(&buf);

 error = git_repository_open(&repo, path);

 git_buf_dispose(&buf);

 if (error < 0)
  return -1;

 t->repo = repo;

 if (store_refs(t) < 0)
  return -1;

 t->connected = 1;

 return 0;
}
