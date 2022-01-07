
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cache {int dummy; } ;


 int NL_DBG (int,char*,struct nl_cache*,int ) ;
 int nl_cache_clear (struct nl_cache*) ;
 int nl_cache_name (struct nl_cache*) ;
 int nl_cache_pickup (struct nl_sock*,struct nl_cache*) ;
 int nl_cache_request_full_dump (struct nl_sock*,struct nl_cache*) ;

int nl_cache_refill(struct nl_sock *sk, struct nl_cache *cache)
{
 int err;

 err = nl_cache_request_full_dump(sk, cache);
 if (err < 0)
  return err;

 NL_DBG(2, "Upading cache %p <%s>, request sent, waiting for dump...\n",
        cache, nl_cache_name(cache));
 nl_cache_clear(cache);

 return nl_cache_pickup(sk, cache);
}
