
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object {int dummy; } ;
struct genl_family {int dummy; } ;


 int nl_object_put (struct nl_object*) ;

void genl_family_put(struct genl_family *family)
{
 nl_object_put((struct nl_object *) family);
}
