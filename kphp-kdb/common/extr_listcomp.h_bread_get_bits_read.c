
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int ptr; int start_ptr; int prefix_bit_offset; int m; } ;


 int ffs (int ) ;

__attribute__((used)) static inline unsigned int bread_get_bits_read (const struct bitreader *br) {
  return ((br->ptr - br->start_ptr) << 3) + (ffs (br->m) - 32) - br->prefix_bit_offset;
}
