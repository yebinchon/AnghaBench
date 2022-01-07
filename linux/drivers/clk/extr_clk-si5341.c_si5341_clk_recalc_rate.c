
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;
struct clk_si5341 {int freq_vco; int regmap; } ;
struct clk_hw {int dummy; } ;


 int SI5341_PLL_M_NUM ;
 int do_div (int,int) ;
 int si5341_decode_44_32 (int ,int ,int*,unsigned int*) ;
 struct clk_si5341* to_clk_si5341 (struct clk_hw*) ;

__attribute__((used)) static unsigned long si5341_clk_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_si5341 *data = to_clk_si5341(hw);
 int err;
 u64 res;
 u64 m_num;
 u32 m_den;
 unsigned int shift;


 err = si5341_decode_44_32(data->regmap, SI5341_PLL_M_NUM,
    &m_num, &m_den);
 if (err < 0)
  return 0;

 if (!m_num || !m_den)
  return 0;







 shift = 0;
 res = m_num;
 while (res & 0xffff00000000ULL) {
  ++shift;
  res >>= 1;
 }
 res *= parent_rate;
 do_div(res, (m_den >> shift));


 data->freq_vco = res;


 do_div(res, 1000);

 return (unsigned long)res;
}
