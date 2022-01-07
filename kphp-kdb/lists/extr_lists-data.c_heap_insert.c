
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;
struct heap_entry {int global_id; int value; } ;
typedef int global_id_t ;


 struct heap_entry* H ;
 scalar_t__ HN ;
 scalar_t__ __vsort_limit ;
 scalar_t__ heap_cmp (struct heap_entry*,int ,int ) ;
 int heap_sift_down (int ,int ) ;
 int heap_sift_up (int ,int ) ;

struct heap_entry *heap_insert (value_t value, global_id_t global_id) {
  int i;
  if (HN == __vsort_limit) {
    if (heap_cmp (&H[1], value, global_id) >= 0) {
      return 0;
    }
    i = heap_sift_down (value, global_id);
  } else {
    i = heap_sift_up (value, global_id);
  }
  H[i].value = value;
  H[i].global_id = global_id;
  return &H[i];
}
