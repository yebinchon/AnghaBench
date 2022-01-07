
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct cache_entry {int name; int ce_mode; } ;


 int S_ISGITLINK (int ) ;
 int null_oid ;
 int should_update_submodules () ;
 struct submodule const* submodule_from_path (int ,int *,int ) ;
 int the_repository ;

const struct submodule *submodule_from_ce(const struct cache_entry *ce)
{
 if (!S_ISGITLINK(ce->ce_mode))
  return ((void*)0);

 if (!should_update_submodules())
  return ((void*)0);

 return submodule_from_path(the_repository, &null_oid, ce->name);
}
