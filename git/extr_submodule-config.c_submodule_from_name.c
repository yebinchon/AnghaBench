
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct repository {int submodule_cache; } ;
struct object_id {int dummy; } ;


 struct submodule const* config_from (int ,struct object_id const*,char const*,int ) ;
 int gitmodules_read_check (struct repository*) ;
 int lookup_name ;

const struct submodule *submodule_from_name(struct repository *r,
         const struct object_id *treeish_name,
  const char *name)
{
 gitmodules_read_check(r);
 return config_from(r->submodule_cache, treeish_name, name, lookup_name);
}
