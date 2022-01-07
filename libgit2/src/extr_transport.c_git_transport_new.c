
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* git_transport_cb ) (int **,int *,void*) ;
typedef int git_transport ;
typedef int git_remote ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_VERSION (int *,int ,char*) ;
 int GIT_ERROR_NET ;
 int GIT_TRANSPORT_VERSION ;
 int git_error_set (int ,char*) ;
 int transport_find_fn (int (*) (int **,int *,void*),char const*,void**) ;

int git_transport_new(git_transport **out, git_remote *owner, const char *url)
{
 git_transport_cb fn;
 git_transport *transport;
 void *param;
 int error;

 if ((error = transport_find_fn(&fn, url, &param)) == GIT_ENOTFOUND) {
  git_error_set(GIT_ERROR_NET, "unsupported URL protocol");
  return -1;
 } else if (error < 0)
  return error;

 if ((error = fn(&transport, owner, param)) < 0)
  return error;

 GIT_ERROR_CHECK_VERSION(transport, GIT_TRANSPORT_VERSION, "git_transport");

 *out = transport;

 return 0;
}
