
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_slot {int dummy; } ;
typedef int jv ;
struct TYPE_2__ {struct object_slot* elements; } ;


 int assert (int) ;
 TYPE_1__* jvp_object_ptr (int ) ;
 int jvp_object_size (int ) ;

__attribute__((used)) static struct object_slot* jvp_object_get_slot(jv object, int slot) {
  assert(slot == -1 || (slot >= 0 && slot < jvp_object_size(object)));
  if (slot == -1) return 0;
  else return &jvp_object_ptr(object)->elements[slot];
}
