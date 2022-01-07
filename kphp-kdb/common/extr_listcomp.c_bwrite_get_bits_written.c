
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int ptr; int start_ptr; int prefix_bit_offset; int m; } ;


 int ffs (int ) ;

unsigned int bwrite_get_bits_written (const struct bitwriter *bw) {
  return ((bw->ptr - bw->start_ptr) << 3) + (8 - ffs (bw->m)) - bw->prefix_bit_offset;
}
