
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int map_value; int str_match; } ;
typedef TYPE_1__ git_configmap ;






 int GIT_ERROR_CONFIG ;
 int git__parse_bool (int*,char const*) ;
 int git_config_parse_int32 (int*,char const*) ;
 int git_error_set (int ,char*,char const*) ;
 int strcasecmp (char const*,int ) ;

int git_config_lookup_map_value(
 int *out,
 const git_configmap *maps,
 size_t map_n,
 const char *value)
{
 size_t i;

 if (!value)
  goto fail_parse;

 for (i = 0; i < map_n; ++i) {
  const git_configmap *m = maps + i;

  switch (m->type) {
  case 131:
  case 128: {
   int bool_val;

   if (git__parse_bool(&bool_val, value) == 0 &&
    bool_val == (int)m->type) {
    *out = m->map_value;
    return 0;
   }
   break;
  }

  case 130:
   if (git_config_parse_int32(out, value) == 0)
    return 0;
   break;

  case 129:
   if (strcasecmp(value, m->str_match) == 0) {
    *out = m->map_value;
    return 0;
   }
   break;
  }
 }

fail_parse:
 git_error_set(GIT_ERROR_CONFIG, "failed to map '%s'", value);
 return -1;
}
