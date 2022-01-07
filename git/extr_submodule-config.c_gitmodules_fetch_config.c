
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_config {int * recurse_submodules; int * max_children; } ;


 int parse_fetch_recurse_submodules_arg (char const*,char const*) ;
 int parse_submodule_fetchjobs (char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int gitmodules_fetch_config(const char *var, const char *value, void *cb)
{
 struct fetch_config *config = cb;
 if (!strcmp(var, "submodule.fetchjobs")) {
  *(config->max_children) = parse_submodule_fetchjobs(var, value);
  return 0;
 } else if (!strcmp(var, "fetch.recursesubmodules")) {
  *(config->recurse_submodules) = parse_fetch_recurse_submodules_arg(var, value);
  return 0;
 }

 return 0;
}
