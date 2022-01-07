
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git__strdup (char const*) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_config__lookup_entry (TYPE_1__**,int *,char const*,int) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_sysdir_expand_global_file (int *,char const*) ;
 int git_sysdir_find_xdg_file (int *,char const*) ;

__attribute__((used)) static int attr_cache__lookup_path(
 char **out, git_config *cfg, const char *key, const char *fallback)
{
 git_buf buf = GIT_BUF_INIT;
 int error;
 git_config_entry *entry = ((void*)0);

 *out = ((void*)0);

 if ((error = git_config__lookup_entry(&entry, cfg, key, 0)) < 0)
  return error;

 if (entry) {
  const char *cfgval = entry->value;


  if (cfgval && cfgval[0] == '~' && cfgval[1] == '/') {
   if (! (error = git_sysdir_expand_global_file(&buf, &cfgval[2])))
    *out = git_buf_detach(&buf);
  } else if (cfgval) {
   *out = git__strdup(cfgval);
  }
 }
 else if (!git_sysdir_find_xdg_file(&buf, fallback)) {
  *out = git_buf_detach(&buf);
 }

 git_config_entry_free(entry);
 git_buf_dispose(&buf);

 return error;
}
