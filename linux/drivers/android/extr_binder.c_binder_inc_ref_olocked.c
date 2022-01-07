
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ strong; scalar_t__ weak; } ;
struct binder_ref {TYPE_1__ data; int node; } ;


 int binder_inc_node (int ,int,int,struct list_head*) ;

__attribute__((used)) static int binder_inc_ref_olocked(struct binder_ref *ref, int strong,
      struct list_head *target_list)
{
 int ret;

 if (strong) {
  if (ref->data.strong == 0) {
   ret = binder_inc_node(ref->node, 1, 1, target_list);
   if (ret)
    return ret;
  }
  ref->data.strong++;
 } else {
  if (ref->data.weak == 0) {
   ret = binder_inc_node(ref->node, 0, 1, target_list);
   if (ret)
    return ret;
  }
  ref->data.weak++;
 }
 return 0;
}
