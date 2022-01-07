
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsck_gitmodules_data {int obj; int options; int ret; } ;


 int FSCK_MSG_GITMODULES_NAME ;
 int FSCK_MSG_GITMODULES_PATH ;
 int FSCK_MSG_GITMODULES_URL ;
 scalar_t__ check_submodule_name (char*) ;
 int free (char*) ;
 scalar_t__ looks_like_command_line_option (char const*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int report (int ,int ,int ,char*,char const*) ;
 int strcmp (char const*,char*) ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static int fsck_gitmodules_fn(const char *var, const char *value, void *vdata)
{
 struct fsck_gitmodules_data *data = vdata;
 const char *subsection, *key;
 int subsection_len;
 char *name;

 if (parse_config_key(var, "submodule", &subsection, &subsection_len, &key) < 0 ||
     !subsection)
  return 0;

 name = xmemdupz(subsection, subsection_len);
 if (check_submodule_name(name) < 0)
  data->ret |= report(data->options, data->obj,
        FSCK_MSG_GITMODULES_NAME,
        "disallowed submodule name: %s",
        name);
 if (!strcmp(key, "url") && value &&
     looks_like_command_line_option(value))
  data->ret |= report(data->options, data->obj,
        FSCK_MSG_GITMODULES_URL,
        "disallowed submodule url: %s",
        value);
 if (!strcmp(key, "path") && value &&
     looks_like_command_line_option(value))
  data->ret |= report(data->options, data->obj,
        FSCK_MSG_GITMODULES_PATH,
        "disallowed submodule path: %s",
        value);
 free(name);

 return 0;
}
