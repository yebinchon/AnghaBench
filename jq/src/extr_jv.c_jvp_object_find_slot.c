
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct object_slot {scalar_t__ hash; int string; } ;
typedef int jv ;


 struct object_slot* jvp_object_get_slot (int ,int) ;
 struct object_slot* jvp_object_next_slot (int ,struct object_slot*) ;
 scalar_t__ jvp_string_equal (int ,int ) ;
 scalar_t__ jvp_string_hash (int ) ;

__attribute__((used)) static struct object_slot* jvp_object_find_slot(jv object, jv keystr, int* bucket) {
  uint32_t hash = jvp_string_hash(keystr);
  for (struct object_slot* curr = jvp_object_get_slot(object, *bucket);
       curr;
       curr = jvp_object_next_slot(object, curr)) {
    if (curr->hash == hash && jvp_string_equal(keystr, curr->string)) {
      return curr;
    }
  }
  return 0;
}
