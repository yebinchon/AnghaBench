
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cache {int dummy; } ;


 int genl_ctrl_ops ;
 int nl_cache_alloc_and_fill (int *,struct nl_sock*,struct nl_cache**) ;

int genl_ctrl_alloc_cache(struct nl_sock *sock, struct nl_cache **result)
{
 return nl_cache_alloc_and_fill(&genl_ctrl_ops, sock, result);
}
