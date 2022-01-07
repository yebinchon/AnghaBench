
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_slot {int value; int string; } ;
typedef int jv ;


 scalar_t__ JV_KIND_NULL ;
 int jv_copy (int ) ;
 int jv_equal (int ,int ) ;
 scalar_t__ jv_get_kind (int ) ;
 struct object_slot* jvp_object_get_slot (int ,int) ;
 int jvp_object_length (int ) ;
 int * jvp_object_read (int ,int ) ;
 int jvp_object_size (int ) ;

__attribute__((used)) static int jvp_object_equal(jv o1, jv o2) {
  int len2 = jvp_object_length(o2);
  int len1 = 0;
  for (int i=0; i<jvp_object_size(o1); i++) {
    struct object_slot* slot = jvp_object_get_slot(o1, i);
    if (jv_get_kind(slot->string) == JV_KIND_NULL) continue;
    jv* slot2 = jvp_object_read(o2, slot->string);
    if (!slot2) return 0;

    if (!jv_equal(jv_copy(slot->value), jv_copy(*slot2))) return 0;
    len1++;
  }
  return len1 == len2;
}
