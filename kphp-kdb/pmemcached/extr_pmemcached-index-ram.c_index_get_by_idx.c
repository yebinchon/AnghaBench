
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int dummy; } ;


 int * index_binary_data ;
 size_t* index_offset ;

inline struct index_entry* index_get_by_idx ( int idx ) {
  return (struct index_entry *)&index_binary_data[index_offset[idx]];
}
