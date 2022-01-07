
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_parser_param {struct dp_xdata* pp_arg; } ;
struct nl_object {int dummy; } ;
struct dp_xdata {int arg; int (* cb ) (struct nl_object*,int ) ;} ;


 int stub1 (struct nl_object*,int ) ;

__attribute__((used)) static int parse_cb(struct nl_object *obj, struct nl_parser_param *p)
{
 struct dp_xdata *x = p->pp_arg;

 x->cb(obj, x->arg);
 return 0;
}
