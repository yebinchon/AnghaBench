
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cache_ops {int dummy; } ;
struct nl_cache {int dummy; } ;


 int NLE_NOMEM ;
 struct nl_cache* nl_cache_alloc (struct nl_cache_ops*) ;
 int nl_cache_free (struct nl_cache*) ;
 int nl_cache_refill (struct nl_sock*,struct nl_cache*) ;

int nl_cache_alloc_and_fill(struct nl_cache_ops *ops, struct nl_sock *sock,
       struct nl_cache **result)
{
 struct nl_cache *cache;
 int err;

 if (!(cache = nl_cache_alloc(ops)))
  return -NLE_NOMEM;

 if (sock && (err = nl_cache_refill(sock, cache)) < 0) {
  nl_cache_free(cache);
  return err;
 }

 *result = cache;
 return 0;
}
