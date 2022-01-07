
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_slot {int next; int string; int hash; } ;
struct TYPE_3__ {int next_free; } ;
typedef TYPE_1__ jvp_object ;
typedef int jv ;


 struct object_slot* jvp_object_get_slot (int ,int) ;
 TYPE_1__* jvp_object_ptr (int ) ;
 int jvp_object_size (int ) ;
 int jvp_string_hash (int ) ;

__attribute__((used)) static struct object_slot* jvp_object_add_slot(jv object, jv key, int* bucket) {
  jvp_object* o = jvp_object_ptr(object);
  int newslot_idx = o->next_free;
  if (newslot_idx == jvp_object_size(object)) return 0;
  struct object_slot* newslot = jvp_object_get_slot(object, newslot_idx);
  o->next_free++;
  newslot->next = *bucket;
  *bucket = newslot_idx;
  newslot->hash = jvp_string_hash(key);
  newslot->string = key;
  return newslot;
}
