
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submodule_cache {int dummy; } ;
struct TYPE_2__ {int * command; int type; } ;
struct submodule {int recommend_shallow; int gitmodules_oid; int * branch; int * ignore; int fetch_recurse; TYPE_1__ update_strategy; int * url; int * path; int name; } ;
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 int RECURSE_SUBMODULES_NONE ;
 int SM_UPDATE_UNSPECIFIED ;
 struct strbuf STRBUF_INIT ;
 int cache_add (struct submodule_cache*,struct submodule*) ;
 struct submodule* cache_lookup_name (struct submodule_cache*,struct object_id const*,char const*) ;
 int oidcpy (int *,struct object_id const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_detach (struct strbuf*,int *) ;
 struct submodule* xmalloc (int) ;

__attribute__((used)) static struct submodule *lookup_or_create_by_name(struct submodule_cache *cache,
  const struct object_id *gitmodules_oid, const char *name)
{
 struct submodule *submodule;
 struct strbuf name_buf = STRBUF_INIT;

 submodule = cache_lookup_name(cache, gitmodules_oid, name);
 if (submodule)
  return submodule;

 submodule = xmalloc(sizeof(*submodule));

 strbuf_addstr(&name_buf, name);
 submodule->name = strbuf_detach(&name_buf, ((void*)0));

 submodule->path = ((void*)0);
 submodule->url = ((void*)0);
 submodule->update_strategy.type = SM_UPDATE_UNSPECIFIED;
 submodule->update_strategy.command = ((void*)0);
 submodule->fetch_recurse = RECURSE_SUBMODULES_NONE;
 submodule->ignore = ((void*)0);
 submodule->branch = ((void*)0);
 submodule->recommend_shallow = -1;

 oidcpy(&submodule->gitmodules_oid, gitmodules_oid);

 cache_add(cache, submodule);

 return submodule;
}
