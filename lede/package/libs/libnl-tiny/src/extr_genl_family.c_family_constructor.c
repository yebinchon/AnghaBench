
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object {int dummy; } ;
struct genl_family {int gf_mc_grps; int gf_ops; } ;


 int nl_init_list_head (int *) ;

__attribute__((used)) static void family_constructor(struct nl_object *c)
{
 struct genl_family *family = (struct genl_family *) c;

 nl_init_list_head(&family->gf_ops);
 nl_init_list_head(&family->gf_mc_grps);
}
