
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int prefix_bit_offset; unsigned char const* start_ptr; unsigned char const* ptr; int m; } ;



void bread_init (struct bitreader *br, const unsigned char *start_ptr, int prefix_bit_offset) {
  br->prefix_bit_offset = prefix_bit_offset;
  br->start_ptr = start_ptr;
  br->ptr = start_ptr + (prefix_bit_offset >> 3);
  br->m = (((int) *br->ptr++ << 24) + (1 << 23)) << (prefix_bit_offset & 7);
}
