
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object_ops {int dummy; } ;
struct nl_object {struct nl_object_ops* ce_ops; } ;


 int BUG () ;

__attribute__((used)) static inline struct nl_object_ops *obj_ops(struct nl_object *obj)
{
 if (!obj->ce_ops)
  BUG();

 return obj->ce_ops;
}
