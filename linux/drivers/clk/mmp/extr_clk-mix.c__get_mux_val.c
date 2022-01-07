
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_mix {unsigned int* mux_table; } ;



__attribute__((used)) static unsigned int _get_mux_val(struct mmp_clk_mix *mix, unsigned int mux)
{
 if (mix->mux_table)
  return mix->mux_table[mux];

 return mux;
}
