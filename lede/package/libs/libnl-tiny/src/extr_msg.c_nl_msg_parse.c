
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nl_parser_param {struct dp_xdata* pp_arg; int pp_cb; } ;
struct nl_msg {int dummy; } ;
struct nl_cache_ops {int dummy; } ;
struct dp_xdata {void (* cb ) (struct nl_object*,void*) ;void* arg; } ;
struct TYPE_3__ {int nlmsg_type; } ;


 int NLE_MSGTYPE_NOSUPPORT ;
 struct nl_cache_ops* nl_cache_ops_associate (int ,int ) ;
 int nl_cache_parse (struct nl_cache_ops*,int *,TYPE_1__*,struct nl_parser_param*) ;
 int nlmsg_get_proto (struct nl_msg*) ;
 TYPE_1__* nlmsg_hdr (struct nl_msg*) ;
 int parse_cb ;

int nl_msg_parse(struct nl_msg *msg, void (*cb)(struct nl_object *, void *),
   void *arg)
{
 struct nl_cache_ops *ops;
 struct nl_parser_param p = {
  .pp_cb = parse_cb
 };
 struct dp_xdata x = {
  .cb = cb,
  .arg = arg,
 };

 ops = nl_cache_ops_associate(nlmsg_get_proto(msg),
         nlmsg_hdr(msg)->nlmsg_type);
 if (ops == ((void*)0))
  return -NLE_MSGTYPE_NOSUPPORT;
 p.pp_arg = &x;

 return nl_cache_parse(ops, ((void*)0), nlmsg_hdr(msg), &p);
}
