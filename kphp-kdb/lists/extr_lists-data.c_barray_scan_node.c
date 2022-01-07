
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;
struct heap_entry {int temp_id; } ;
typedef int listree_t ;
typedef int global_id_t ;


 int * M_global_id_list ;
 int __vsort_and_mask ;
 int __vsort_scanned ;
 int __vsort_xor_mask ;
 struct heap_entry* heap_insert (int ,int ) ;
 int metafile_get_flags (int) ;
 int metafile_get_value (int) ;

__attribute__((used)) static int barray_scan_node (listree_t *LT, int temp_id) {
  int flags = metafile_get_flags (temp_id);
  if (((flags ^ __vsort_xor_mask) & __vsort_and_mask) != 0) {
    return 0;
  }
  global_id_t global_id = M_global_id_list[temp_id];
  value_t value = metafile_get_value (temp_id);
  struct heap_entry *h = heap_insert (value, global_id);
  if (h) {
    h->temp_id = temp_id * 2 + 1;
  }
  __vsort_scanned++;
  return 1;
}
