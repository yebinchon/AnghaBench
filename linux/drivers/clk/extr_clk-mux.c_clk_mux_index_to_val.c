
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef unsigned int u32 ;


 unsigned int CLK_MUX_INDEX_BIT ;
 unsigned int CLK_MUX_INDEX_ONE ;

unsigned int clk_mux_index_to_val(u32 *table, unsigned int flags, u8 index)
{
 unsigned int val = index;

 if (table) {
  val = table[index];
 } else {
  if (flags & CLK_MUX_INDEX_BIT)
   val = 1 << index;

  if (flags & CLK_MUX_INDEX_ONE)
   val++;
 }

 return val;
}
