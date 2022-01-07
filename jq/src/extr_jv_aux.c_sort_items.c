
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_entry {int index; void* key; void* object; } ;
typedef int jv ;


 scalar_t__ JV_KIND_ARRAY ;
 int assert (int) ;
 void* jv_array_get (int ,int) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 struct sort_entry* jv_mem_calloc (int,int) ;
 int qsort (struct sort_entry*,int,int,int ) ;
 int sort_cmp ;

__attribute__((used)) static struct sort_entry* sort_items(jv objects, jv keys) {
  assert(jv_get_kind(objects) == JV_KIND_ARRAY);
  assert(jv_get_kind(keys) == JV_KIND_ARRAY);
  assert(jv_array_length(jv_copy(objects)) == jv_array_length(jv_copy(keys)));
  int n = jv_array_length(jv_copy(objects));
  struct sort_entry* entries = jv_mem_calloc(sizeof(struct sort_entry), n);
  for (int i=0; i<n; i++) {
    entries[i].object = jv_array_get(jv_copy(objects), i);
    entries[i].key = jv_array_get(jv_copy(keys), i);
    entries[i].index = i;
  }
  jv_free(objects);
  jv_free(keys);
  qsort(entries, n, sizeof(struct sort_entry), sort_cmp);
  return entries;
}
