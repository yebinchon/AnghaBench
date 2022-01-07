
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int at93c_write_databit (int) ;

__attribute__((used)) static void at93c_write_bits(u32 data, int size)
{
 int i;
 int shift = size - 1;
 u32 mask = (1 << shift);

 for (i = 0; i < size; i++) {
  at93c_write_databit((data & mask) >> shift);
  data <<= 1;
 }
}
