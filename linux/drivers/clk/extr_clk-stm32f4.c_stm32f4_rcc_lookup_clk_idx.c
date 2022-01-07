
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int table ;


 int BITS_PER_BYTE ;
 int BITS_PER_LONG_LONG ;
 int BIT_ULL_MASK (int) ;
 int BIT_ULL_WORD (int) ;
 int EINVAL ;
 int GENMASK_ULL (int,int ) ;
 int MAX_GATE_MAP ;
 scalar_t__ WARN_ON (int) ;
 int hweight64 (int) ;
 int memcpy (int*,int ,int) ;
 int stm32f4_gate_map ;
 int stm32fx_end_primary_clk ;

__attribute__((used)) static int stm32f4_rcc_lookup_clk_idx(u8 primary, u8 secondary)
{
 u64 table[MAX_GATE_MAP];

 if (primary == 1) {
  if (WARN_ON(secondary >= stm32fx_end_primary_clk))
   return -EINVAL;
  return secondary;
 }

 memcpy(table, stm32f4_gate_map, sizeof(table));


 if (WARN_ON(secondary >= BITS_PER_BYTE * sizeof(table) ||
      0 == (table[BIT_ULL_WORD(secondary)] &
     BIT_ULL_MASK(secondary))))
  return -EINVAL;


 table[BIT_ULL_WORD(secondary)] &=
     GENMASK_ULL(secondary % BITS_PER_LONG_LONG, 0);

 return stm32fx_end_primary_clk - 1 + hweight64(table[0]) +
        (BIT_ULL_WORD(secondary) >= 1 ? hweight64(table[1]) : 0) +
        (BIT_ULL_WORD(secondary) >= 2 ? hweight64(table[2]) : 0);
}
