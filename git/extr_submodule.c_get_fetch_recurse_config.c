
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_parallel_fetch {scalar_t__ command_line_option; int default_option; int r; } ;
struct submodule {int fetch_recurse; int name; } ;


 scalar_t__ RECURSE_SUBMODULES_DEFAULT ;
 int RECURSE_SUBMODULES_NONE ;
 int free (char*) ;
 int parse_fetch_recurse_submodules_arg (char*,char const*) ;
 int repo_config_get_string_const (int ,char*,char const**) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static int get_fetch_recurse_config(const struct submodule *submodule,
        struct submodule_parallel_fetch *spf)
{
 if (spf->command_line_option != RECURSE_SUBMODULES_DEFAULT)
  return spf->command_line_option;

 if (submodule) {
  char *key;
  const char *value;

  int fetch_recurse = submodule->fetch_recurse;
  key = xstrfmt("submodule.%s.fetchRecurseSubmodules", submodule->name);
  if (!repo_config_get_string_const(spf->r, key, &value)) {
   fetch_recurse = parse_fetch_recurse_submodules_arg(key, value);
  }
  free(key);

  if (fetch_recurse != RECURSE_SUBMODULES_NONE)

   return fetch_recurse;
 }

 return spf->default_option;
}
