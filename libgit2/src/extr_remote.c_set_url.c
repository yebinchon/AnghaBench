
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert (int) ;
 int canonicalize_url (TYPE_1__*,char const*) ;
 int ensure_remote_name_is_valid (char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char const*,char const*) ;
 int git_config_delete_entry (int *,int ) ;
 int git_config_set_string (int *,int ,char const*) ;
 int git_repository_config__weakptr (int **,int *) ;

__attribute__((used)) static int set_url(git_repository *repo, const char *remote, const char *pattern, const char *url)
{
 git_config *cfg;
 git_buf buf = GIT_BUF_INIT, canonical_url = GIT_BUF_INIT;
 int error;

 assert(repo && remote);

 if ((error = ensure_remote_name_is_valid(remote)) < 0)
  return error;

 if ((error = git_repository_config__weakptr(&cfg, repo)) < 0)
  return error;

 if ((error = git_buf_printf(&buf, pattern, remote)) < 0)
  return error;

 if (url) {
  if ((error = canonicalize_url(&canonical_url, url)) < 0)
   goto cleanup;

  error = git_config_set_string(cfg, buf.ptr, url);
 } else {
  error = git_config_delete_entry(cfg, buf.ptr);
 }

cleanup:
 git_buf_dispose(&canonical_url);
 git_buf_dispose(&buf);

 return error;
}
