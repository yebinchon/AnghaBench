
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_configmap_t ;
struct TYPE_3__ {int map_value; char* str_match; int type; } ;
typedef TYPE_1__ git_configmap ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*) ;

int git_config_lookup_map_enum(git_configmap_t *type_out, const char **str_out,
          const git_configmap *maps, size_t map_n, int enum_val)
{
 size_t i;

 for (i = 0; i < map_n; i++) {
  const git_configmap *m = &maps[i];

  if (m->map_value != enum_val)
   continue;

  *type_out = m->type;
  *str_out = m->str_match;
  return 0;
 }

 git_error_set(GIT_ERROR_CONFIG, "invalid enum value");
 return GIT_ENOTFOUND;
}
