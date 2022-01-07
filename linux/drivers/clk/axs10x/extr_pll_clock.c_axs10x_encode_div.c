
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PLL_REG_SET_BYPASS (int ,int) ;
 int PLL_REG_SET_EDGE (int ,unsigned int) ;
 int PLL_REG_SET_HIGH (int ,unsigned int) ;
 int PLL_REG_SET_LOW (int ,unsigned int) ;
 int PLL_REG_SET_NOUPD (int ,int) ;

__attribute__((used)) static inline u32 axs10x_encode_div(unsigned int id, int upd)
{
 u32 div = 0;

 PLL_REG_SET_LOW(div, (id % 2 == 0) ? id >> 1 : (id >> 1) + 1);
 PLL_REG_SET_HIGH(div, id >> 1);
 PLL_REG_SET_EDGE(div, id % 2);
 PLL_REG_SET_BYPASS(div, id == 1 ? 1 : 0);
 PLL_REG_SET_NOUPD(div, upd == 0 ? 1 : 0);

 return div;
}
