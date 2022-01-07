
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_parser_param {struct nl_cache* pp_arg; int pp_cb; } ;
struct nl_cache {int dummy; } ;


 int __cache_pickup (struct nl_sock*,struct nl_cache*,struct nl_parser_param*) ;
 int pickup_cb ;

int nl_cache_pickup(struct nl_sock *sk, struct nl_cache *cache)
{
 struct nl_parser_param p = {
  .pp_cb = pickup_cb,
  .pp_arg = cache,
 };

 return __cache_pickup(sk, cache, &p);
}
