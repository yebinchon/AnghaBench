
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {char const* name; int * repository; } ;
typedef TYPE_1__ git_remote_create_options ;
typedef int git_remote ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ERROR ;
 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ;
 scalar_t__ canonicalize_url (int *,char const*) ;
 int ensure_remote_name_is_valid (char const*) ;
 int git_buf_clear (int *) ;
 int git_buf_dispose (int *) ;
 int git_remote_create_with_opts (int **,char const*,TYPE_1__*) ;

int git_remote_create(git_remote **out, git_repository *repo, const char *name, const char *url)
{
 git_buf buf = GIT_BUF_INIT;
 int error;
 git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;


 if ((error = ensure_remote_name_is_valid(name)) < 0)
  return error;

 if (canonicalize_url(&buf, url) < 0)
  return GIT_ERROR;

 git_buf_clear(&buf);

 opts.repository = repo;
 opts.name = name;

 error = git_remote_create_with_opts(out, url, &opts);

 git_buf_dispose(&buf);

 return error;
}
