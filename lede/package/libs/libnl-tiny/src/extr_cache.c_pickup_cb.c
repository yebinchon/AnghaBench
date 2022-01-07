
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_parser_param {scalar_t__ pp_arg; } ;
struct nl_object {int dummy; } ;
struct nl_cache {int dummy; } ;


 int nl_cache_add (struct nl_cache*,struct nl_object*) ;

__attribute__((used)) static int pickup_cb(struct nl_object *c, struct nl_parser_param *p)
{
 return nl_cache_add((struct nl_cache *) p->pp_arg, c);
}
