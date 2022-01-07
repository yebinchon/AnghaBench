
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_parser_param {struct nl_cache* pp_arg; int pp_cb; } ;
struct nl_msg {int dummy; } ;
struct nl_cache {int c_ops; } ;


 int nl_cache_parse (int ,int *,int ,struct nl_parser_param*) ;
 int nlmsg_hdr (struct nl_msg*) ;
 int pickup_cb ;

int nl_cache_parse_and_add(struct nl_cache *cache, struct nl_msg *msg)
{
 struct nl_parser_param p = {
  .pp_cb = pickup_cb,
  .pp_arg = cache,
 };

 return nl_cache_parse(cache->c_ops, ((void*)0), nlmsg_hdr(msg), &p);
}
