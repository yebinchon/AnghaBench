
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int (* git_remote_create_cb ) (int **,int *,char*,char const*,void*) ;
typedef int git_remote ;
struct TYPE_3__ {int (* remote_cb ) (int **,int *,char*,char const*,void*) ;void* remote_cb_payload; } ;
typedef TYPE_1__ git_clone_options ;


 int GIT_PATH_MAX ;
 int default_remote_create (int **,int *,char*,char const*,void*) ;
 scalar_t__ git_path_exists (char const*) ;
 scalar_t__ git_path_isdir (char const*) ;
 scalar_t__ git_path_root (char const*) ;
 int git_remote_free (int *) ;
 int * p_realpath (char const*,char*) ;

__attribute__((used)) static int create_and_configure_origin(
  git_remote **out,
  git_repository *repo,
  const char *url,
  const git_clone_options *options)
{
 int error;
 git_remote *origin = ((void*)0);
 char buf[GIT_PATH_MAX];
 git_remote_create_cb remote_create = options->remote_cb;
 void *payload = options->remote_cb_payload;


 if (git_path_root(url) < 0 && git_path_exists(url) && git_path_isdir(url)) {
  if (p_realpath(url, buf) == ((void*)0))
   return -1;

  url = buf;
 }

 if (!remote_create) {
  remote_create = default_remote_create;
  payload = ((void*)0);
 }

 if ((error = remote_create(&origin, repo, "origin", url, payload)) < 0)
  goto on_error;

 *out = origin;
 return 0;

on_error:
 git_remote_free(origin);
 return error;
}
