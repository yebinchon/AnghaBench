
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cache {int dummy; } ;
struct genl_family {int dummy; } ;


 int NLE_OBJ_NOTFOUND ;
 int genl_ctrl_alloc_cache (struct nl_sock*,struct nl_cache**) ;
 struct genl_family* genl_ctrl_search_by_name (struct nl_cache*,char const*) ;
 int genl_family_get_id (struct genl_family*) ;
 int genl_family_put (struct genl_family*) ;
 int nl_cache_free (struct nl_cache*) ;

int genl_ctrl_resolve(struct nl_sock *sk, const char *name)
{
 struct nl_cache *cache;
 struct genl_family *family;
 int err;

 if ((err = genl_ctrl_alloc_cache(sk, &cache)) < 0)
  return err;

 family = genl_ctrl_search_by_name(cache, name);
 if (family == ((void*)0)) {
  err = -NLE_OBJ_NOTFOUND;
  goto errout;
 }

 err = genl_family_get_id(family);
 genl_family_put(family);
errout:
 nl_cache_free(cache);

 return err;
}
