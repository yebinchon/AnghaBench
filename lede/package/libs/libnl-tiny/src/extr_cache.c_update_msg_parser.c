
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_xdata {int params; int ops; } ;
struct nl_msg {int nm_nlh; int nm_src; } ;


 int nl_cache_parse (int ,int *,int ,int ) ;

__attribute__((used)) static int update_msg_parser(struct nl_msg *msg, void *arg)
{
 struct update_xdata *x = arg;

 return nl_cache_parse(x->ops, &msg->nm_src, msg->nm_nlh, x->params);
}
