
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct object_slot {scalar_t__ hash; int next; int value; int string; } ;
typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int JV_NULL ;
 int assert (int ) ;
 int jv_free (int ) ;
 int* jvp_object_find_bucket (int ,int ) ;
 struct object_slot* jvp_object_get_slot (int ,int) ;
 struct object_slot* jvp_object_next_slot (int ,struct object_slot*) ;
 int jvp_object_unshare (int ) ;
 scalar_t__ jvp_string_equal (int ,int ) ;
 int jvp_string_free (int ) ;
 scalar_t__ jvp_string_hash (int ) ;

__attribute__((used)) static int jvp_object_delete(jv* object, jv key) {
  assert(JVP_HAS_KIND(key, JV_KIND_STRING));
  *object = jvp_object_unshare(*object);
  int* bucket = jvp_object_find_bucket(*object, key);
  int* prev_ptr = bucket;
  uint32_t hash = jvp_string_hash(key);
  for (struct object_slot* curr = jvp_object_get_slot(*object, *bucket);
       curr;
       curr = jvp_object_next_slot(*object, curr)) {
    if (hash == curr->hash && jvp_string_equal(key, curr->string)) {
      *prev_ptr = curr->next;
      jvp_string_free(curr->string);
      curr->string = JV_NULL;
      jv_free(curr->value);
      return 1;
    }
    prev_ptr = &curr->next;
  }
  return 0;
}
