
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int submodule_cache; } ;
struct parse_config_parameter {int overwrite; int * gitmodules_oid; int * treeish_name; int cache; } ;


 int null_oid ;
 int parse_config (char const*,char const*,struct parse_config_parameter*) ;

__attribute__((used)) static int gitmodules_cb(const char *var, const char *value, void *data)
{
 struct repository *repo = data;
 struct parse_config_parameter parameter;

 parameter.cache = repo->submodule_cache;
 parameter.treeish_name = ((void*)0);
 parameter.gitmodules_oid = &null_oid;
 parameter.overwrite = 1;

 return parse_config(var, value, &parameter);
}
