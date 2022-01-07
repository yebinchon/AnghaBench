
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream_cursor {unsigned int bit; scalar_t__ b; } ;



__attribute__((used)) static inline void bitstream_cursor_advance(struct bitstream_cursor *cur, unsigned int bits)
{
 bits += cur->bit;
 cur->b = cur->b + (bits >> 3);
 cur->bit = bits & 7;
}
