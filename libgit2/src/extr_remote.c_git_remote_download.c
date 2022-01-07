
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_15__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote_callbacks ;
struct TYPE_16__ {int passed_refspecs; int * push; int active_refspecs; int refspecs; int passive_refspecs; int repo; } ;
typedef TYPE_2__ git_remote ;
typedef int git_proxy_options ;
struct TYPE_17__ {int proxy_opts; TYPE_1__ custom_headers; int callbacks; } ;
typedef TYPE_3__ git_fetch_options ;


 int GIT_DIRECTION_FETCH ;
 int GIT_ERROR_CHECK_VERSION (int *,int ,char*) ;
 int GIT_ERROR_INVALID ;
 int GIT_PROXY_OPTIONS_VERSION ;
 int GIT_REMOTE_CALLBACKS_VERSION ;
 int GIT_VECTOR_INIT ;
 int add_refspec_to (int *,int ,int) ;
 int assert (TYPE_2__*) ;
 int dwim_refspecs (int *,int *,int *) ;
 int free_refspecs (int *) ;
 int git_error_set (int ,char*) ;
 int git_fetch_download_pack (TYPE_2__*,int const*) ;
 int git_fetch_negotiate (TYPE_2__*,TYPE_3__ const*) ;
 int git_push_free (int *) ;
 int git_remote_connect (TYPE_2__*,int ,int const*,int const*,TYPE_1__ const*) ;
 int git_remote_connected (TYPE_2__*) ;
 int git_vector_free (int *) ;
 scalar_t__ git_vector_init (int *,int ,int *) ;
 scalar_t__ ls_to_vector (int *,TYPE_2__*) ;

int git_remote_download(git_remote *remote, const git_strarray *refspecs, const git_fetch_options *opts)
{
 int error = -1;
 size_t i;
 git_vector *to_active, specs = GIT_VECTOR_INIT, refs = GIT_VECTOR_INIT;
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

 if (!git_remote_connected(remote) &&
     (error = git_remote_connect(remote, GIT_DIRECTION_FETCH, cbs, proxy, custom_headers)) < 0)
  goto on_error;

 if (ls_to_vector(&refs, remote) < 0)
  return -1;

 if ((git_vector_init(&specs, 0, ((void*)0))) < 0)
  goto on_error;

 remote->passed_refspecs = 0;
 if (!refspecs || !refspecs->count) {
  to_active = &remote->refspecs;
 } else {
  for (i = 0; i < refspecs->count; i++) {
   if ((error = add_refspec_to(&specs, refspecs->strings[i], 1)) < 0)
    goto on_error;
  }

  to_active = &specs;
  remote->passed_refspecs = 1;
 }

 free_refspecs(&remote->passive_refspecs);
 if ((error = dwim_refspecs(&remote->passive_refspecs, &remote->refspecs, &refs)) < 0)
  goto on_error;

 free_refspecs(&remote->active_refspecs);
 error = dwim_refspecs(&remote->active_refspecs, to_active, &refs);

 git_vector_free(&refs);
 free_refspecs(&specs);
 git_vector_free(&specs);

 if (error < 0)
  return error;

 if (remote->push) {
  git_push_free(remote->push);
  remote->push = ((void*)0);
 }

 if ((error = git_fetch_negotiate(remote, opts)) < 0)
  return error;

 return git_fetch_download_pack(remote, cbs);

on_error:
 git_vector_free(&refs);
 free_refspecs(&specs);
 git_vector_free(&specs);
 return error;
}
