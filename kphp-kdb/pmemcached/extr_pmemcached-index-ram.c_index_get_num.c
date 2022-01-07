
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int dummy; } ;


 int assert (int) ;
 struct index_entry empty_index_entry ;
 int * index_binary_data ;
 size_t* index_offset ;
 int index_size ;

struct index_entry* index_get_num (int n, int use_aio) {
  if (n >= index_size) {
    return &empty_index_entry;
  }
  assert (n >= 0);
  return (struct index_entry *)&index_binary_data[index_offset[n]];
}
