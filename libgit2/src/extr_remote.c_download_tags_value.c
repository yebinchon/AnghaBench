
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int download_tags; int name; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_7__ {scalar_t__ value; } ;
typedef TYPE_2__ git_config_entry ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REMOTE_DOWNLOAD_TAGS_ALL ;
 int GIT_REMOTE_DOWNLOAD_TAGS_NONE ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char*,int ) ;
 int git_config__lookup_entry (TYPE_2__**,int *,int ,int) ;
 int git_config_entry_free (TYPE_2__*) ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int download_tags_value(git_remote *remote, git_config *cfg)
{
 git_config_entry *ce;
 git_buf buf = GIT_BUF_INIT;
 int error;

 if (git_buf_printf(&buf, "remote.%s.tagopt", remote->name) < 0)
  return -1;

 error = git_config__lookup_entry(&ce, cfg, git_buf_cstr(&buf), 0);
 git_buf_dispose(&buf);

 if (!error && ce && ce->value) {
  if (!strcmp(ce->value, "--no-tags"))
   remote->download_tags = GIT_REMOTE_DOWNLOAD_TAGS_NONE;
  else if (!strcmp(ce->value, "--tags"))
   remote->download_tags = GIT_REMOTE_DOWNLOAD_TAGS_ALL;
 }

 git_config_entry_free(ce);
 return error;
}
