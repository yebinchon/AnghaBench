
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_audio_divider {int dummy; } ;



__attribute__((used)) static unsigned long audio_calc_rate(struct clk_zx_audio_divider *audio_div,
         u32 reg_frac, u32 reg_int,
         unsigned long parent_rate)
{
 unsigned long rate, m, n;

 m = reg_frac & 0xffff;
 n = (reg_frac >> 16) & 0xffff;

 m = (reg_int & 0xffff) * n + m;
 rate = (parent_rate * n) / m;

 return rate;
}
