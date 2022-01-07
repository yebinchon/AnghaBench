
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prune_refs; } ;
typedef TYPE_1__ git_remote ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_config_get_bool (int *,int *,char*) ;
 int git_error_clear () ;

__attribute__((used)) static int lookup_remote_prune_config(git_remote *remote, git_config *config, const char *name)
{
 git_buf buf = GIT_BUF_INIT;
 int error = 0;

 git_buf_printf(&buf, "remote.%s.prune", name);

 if ((error = git_config_get_bool(&remote->prune_refs, config, git_buf_cstr(&buf))) < 0) {
  if (error == GIT_ENOTFOUND) {
   git_error_clear();

   if ((error = git_config_get_bool(&remote->prune_refs, config, "fetch.prune")) < 0) {
    if (error == GIT_ENOTFOUND) {
     git_error_clear();
     error = 0;
    }
   }
  }
 }

 git_buf_dispose(&buf);
 return error;
}
