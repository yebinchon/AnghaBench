
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {unsigned int prefix_bit_offset; unsigned char* start_ptr; unsigned char* end_ptr; unsigned char* ptr; int m; } ;


 int assert (int) ;

void bwrite_init (struct bitwriter *bw, unsigned char *start_ptr, unsigned char *end_ptr, unsigned int prefix_bit_offset) {
  bw->prefix_bit_offset = prefix_bit_offset;
  bw->start_ptr = start_ptr;
  bw->end_ptr = end_ptr;
  bw->ptr = start_ptr + (prefix_bit_offset >> 3);
  assert (bw->ptr < bw->end_ptr);
  prefix_bit_offset &= 7;
  bw->m = 0x80 >> prefix_bit_offset;
  *bw->ptr &= 0xffffff00U >> prefix_bit_offset;
}
