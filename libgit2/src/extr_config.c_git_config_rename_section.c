
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rename_data {scalar_t__ old_len; TYPE_1__* name; int * config; } ;
typedef int git_repository ;
typedef int git_config ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_CONFIG ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,char,char const*,char*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_buf_text_puts_escape_regex (TYPE_1__*,char const*) ;
 int git_config_foreach_match (int *,int ,int ,struct rename_data*) ;
 int git_error_set (int ,char*,char const*) ;
 int git_repository_config__weakptr (int **,int *) ;
 int normalize_section (int ,int ) ;
 int rename_config_entries_cb ;
 int strchr (int ,char) ;
 scalar_t__ strlen (char const*) ;

int git_config_rename_section(
 git_repository *repo,
 const char *old_section_name,
 const char *new_section_name)
{
 git_config *config;
 git_buf pattern = GIT_BUF_INIT, replace = GIT_BUF_INIT;
 int error = 0;
 struct rename_data data;

 git_buf_text_puts_escape_regex(&pattern, old_section_name);

 if ((error = git_buf_puts(&pattern, "\\..+")) < 0)
  goto cleanup;

 if ((error = git_repository_config__weakptr(&config, repo)) < 0)
  goto cleanup;

 data.config = config;
 data.name = &replace;
 data.old_len = strlen(old_section_name) + 1;

 if ((error = git_buf_join(&replace, '.', new_section_name, "")) < 0)
  goto cleanup;

 if (new_section_name != ((void*)0) &&
     (error = normalize_section(replace.ptr, strchr(replace.ptr, '.'))) < 0)
 {
  git_error_set(
   GIT_ERROR_CONFIG, "invalid config section '%s'", new_section_name);
  goto cleanup;
 }

 error = git_config_foreach_match(
  config, git_buf_cstr(&pattern), rename_config_entries_cb, &data);

cleanup:
 git_buf_dispose(&pattern);
 git_buf_dispose(&replace);

 return error;
}
