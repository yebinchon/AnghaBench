
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int find_next_bit (unsigned long const*,int,int) ;

int kvm_vector_to_index(u32 vector, u32 dest_vcpus,
         const unsigned long *bitmap, u32 bitmap_size)
{
 u32 mod;
 int i, idx = -1;

 mod = vector % dest_vcpus;

 for (i = 0; i <= mod; i++) {
  idx = find_next_bit(bitmap, bitmap_size, idx + 1);
  BUG_ON(idx == bitmap_size);
 }

 return idx;
}
