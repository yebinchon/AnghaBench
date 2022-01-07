
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_slot {int value; } ;
typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int* jvp_object_find_bucket (int ,int ) ;
 struct object_slot* jvp_object_find_slot (int ,int ,int*) ;

__attribute__((used)) static jv* jvp_object_read(jv object, jv key) {
  assert(JVP_HAS_KIND(key, JV_KIND_STRING));
  int* bucket = jvp_object_find_bucket(object, key);
  struct object_slot* slot = jvp_object_find_slot(object, key, bucket);
  if (slot == 0) return 0;
  else return &slot->value;
}
