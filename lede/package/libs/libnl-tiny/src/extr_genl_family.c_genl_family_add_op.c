
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family_op {int o_id; int o_flags; int o_list; } ;
struct genl_family {int ce_mask; int gf_ops; } ;


 int FAMILY_ATTR_OPS ;
 int NLE_NOMEM ;
 struct genl_family_op* calloc (int,int) ;
 int nl_list_add_tail (int *,int *) ;

int genl_family_add_op(struct genl_family *family, int id, int flags)
{
 struct genl_family_op *op;

 op = calloc(1, sizeof(*op));
 if (op == ((void*)0))
  return -NLE_NOMEM;

 op->o_id = id;
 op->o_flags = flags;

 nl_list_add_tail(&op->o_list, &family->gf_ops);
 family->ce_mask |= FAMILY_ATTR_OPS;

 return 0;
}
