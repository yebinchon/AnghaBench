
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family {int dummy; } ;


 int genl_family_ops ;
 scalar_t__ nl_object_alloc (int *) ;

struct genl_family *genl_family_alloc(void)
{
 return (struct genl_family *) nl_object_alloc(&genl_family_ops);
}
