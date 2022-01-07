
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_entry {int object; int key; } ;
typedef int jv ;


 scalar_t__ JV_KIND_ARRAY ;
 int assert (int) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 scalar_t__ jv_equal (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_mem_free (struct sort_entry*) ;
 struct sort_entry* sort_items (int ,int ) ;

jv jv_group(jv objects, jv keys) {
  assert(jv_get_kind(objects) == JV_KIND_ARRAY);
  assert(jv_get_kind(keys) == JV_KIND_ARRAY);
  assert(jv_array_length(jv_copy(objects)) == jv_array_length(jv_copy(keys)));
  int n = jv_array_length(jv_copy(objects));
  struct sort_entry* entries = sort_items(objects, keys);
  jv ret = jv_array();
  if (n > 0) {
    jv curr_key = entries[0].key;
    jv group = jv_array_append(jv_array(), entries[0].object);
    for (int i = 1; i < n; i++) {
      if (jv_equal(jv_copy(curr_key), jv_copy(entries[i].key))) {
        jv_free(entries[i].key);
      } else {
        jv_free(curr_key);
        curr_key = entries[i].key;
        ret = jv_array_append(ret, group);
        group = jv_array();
      }
      group = jv_array_append(group, entries[i].object);
    }
    jv_free(curr_key);
    ret = jv_array_append(ret, group);
  }
  jv_mem_free(entries);
  return ret;
}
