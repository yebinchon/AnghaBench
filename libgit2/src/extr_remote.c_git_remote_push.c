
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_strarray ;
typedef int git_remote_callbacks ;
struct TYPE_11__ {int repo; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_12__ {int proxy_opts; int custom_headers; int callbacks; } ;
typedef TYPE_2__ git_push_options ;
typedef int git_proxy_options ;


 int GIT_DIRECTION_PUSH ;
 int GIT_ERROR_CHECK_VERSION (int *,int ,char*) ;
 int GIT_ERROR_INVALID ;
 int GIT_PROXY_OPTIONS_VERSION ;
 int GIT_REMOTE_CALLBACKS_VERSION ;
 int assert (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int git_remote_connect (TYPE_1__*,int ,int const*,int const*,int const*) ;
 int git_remote_disconnect (TYPE_1__*) ;
 int git_remote_update_tips (TYPE_1__*,int const*,int ,int ,int *) ;
 int git_remote_upload (TYPE_1__*,int const*,TYPE_2__ const*) ;

int git_remote_push(git_remote *remote, const git_strarray *refspecs, const git_push_options *opts)
{
 int error;
 const git_remote_callbacks *cbs = ((void*)0);
 const git_strarray *custom_headers = ((void*)0);
 const git_proxy_options *proxy = ((void*)0);

 assert(remote);

 if (!remote->repo) {
  git_error_set(GIT_ERROR_INVALID, "cannot download detached remote");
  return -1;
 }

 if (opts) {
  GIT_ERROR_CHECK_VERSION(&opts->callbacks, GIT_REMOTE_CALLBACKS_VERSION, "git_remote_callbacks");
  cbs = &opts->callbacks;
  custom_headers = &opts->custom_headers;
  GIT_ERROR_CHECK_VERSION(&opts->proxy_opts, GIT_PROXY_OPTIONS_VERSION, "git_proxy_options");
  proxy = &opts->proxy_opts;
 }

 assert(remote);

 if ((error = git_remote_connect(remote, GIT_DIRECTION_PUSH, cbs, proxy, custom_headers)) < 0)
  return error;

 if ((error = git_remote_upload(remote, refspecs, opts)) < 0)
  return error;

 error = git_remote_update_tips(remote, cbs, 0, 0, ((void*)0));

 git_remote_disconnect(remote);
 return error;
}
