
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_xdata {struct nl_parser_param* params; int ops; } ;
struct nl_sock {int s_cb; } ;
struct nl_parser_param {int dummy; } ;
struct nl_cb {int dummy; } ;
struct nl_cache {int c_ops; } ;


 int NLE_NOMEM ;
 int NL_CB_CUSTOM ;
 int NL_CB_VALID ;
 int NL_DBG (int,char*,struct nl_cache*,int ,...) ;
 int nl_cache_name (struct nl_cache*) ;
 struct nl_cb* nl_cb_clone (int ) ;
 int nl_cb_put (struct nl_cb*) ;
 int nl_cb_set (struct nl_cb*,int ,int ,int ,struct update_xdata*) ;
 int nl_geterror (int) ;
 int nl_recvmsgs (struct nl_sock*,struct nl_cb*) ;
 int update_msg_parser ;

int __cache_pickup(struct nl_sock *sk, struct nl_cache *cache,
     struct nl_parser_param *param)
{
 int err;
 struct nl_cb *cb;
 struct update_xdata x = {
  .ops = cache->c_ops,
  .params = param,
 };

 NL_DBG(1, "Picking up answer for cache %p <%s>...\n",
    cache, nl_cache_name(cache));

 cb = nl_cb_clone(sk->s_cb);
 if (cb == ((void*)0))
  return -NLE_NOMEM;

 nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, update_msg_parser, &x);

 err = nl_recvmsgs(sk, cb);
 if (err < 0)
  NL_DBG(2, "While picking up for %p <%s>, recvmsgs() returned " "%d: %s", cache, nl_cache_name(cache),

         err, nl_geterror(err));

 nl_cb_put(cb);

 return err;
}
