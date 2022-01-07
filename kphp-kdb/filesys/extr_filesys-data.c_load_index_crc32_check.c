
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bread (unsigned int*,int) ;
 unsigned int idx_crc32_complement ;
 int vkprintf (int,char*,unsigned int,unsigned int const) ;

int load_index_crc32_check (void) {
  const unsigned computed_crc32 = ~idx_crc32_complement;
  unsigned idx_crc32;
  bread (&idx_crc32, 4);
  idx_crc32_complement = -1;
  if (idx_crc32 != computed_crc32) {
    vkprintf (1, "crc32 read = %x, crc32 computed = %x\n", idx_crc32, computed_crc32);
    return -1;
  }
  return 0;
}
