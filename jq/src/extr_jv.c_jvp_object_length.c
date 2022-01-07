
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_slot {int string; } ;
typedef int jv ;


 scalar_t__ JV_KIND_NULL ;
 scalar_t__ jv_get_kind (int ) ;
 struct object_slot* jvp_object_get_slot (int ,int) ;
 int jvp_object_size (int ) ;

__attribute__((used)) static int jvp_object_length(jv object) {
  int n = 0;
  for (int i=0; i<jvp_object_size(object); i++) {
    struct object_slot* slot = jvp_object_get_slot(object, i);
    if (jv_get_kind(slot->string) != JV_KIND_NULL) n++;
  }
  return n;
}
