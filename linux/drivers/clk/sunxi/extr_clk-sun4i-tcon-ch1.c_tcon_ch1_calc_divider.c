
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned long tcon_ch1_calc_divider(unsigned long rate,
        unsigned long parent_rate,
        u8 *div,
        bool *half)
{
 unsigned long best_rate = 0;
 u8 best_m = 0, m;
 bool is_double;

 for (m = 1; m < 16; m++) {
  u8 d;

  for (d = 1; d < 3; d++) {
   unsigned long tmp_rate;

   tmp_rate = parent_rate / m / d;

   if (tmp_rate > rate)
    continue;

   if (!best_rate ||
       (rate - tmp_rate) < (rate - best_rate)) {
    best_rate = tmp_rate;
    best_m = m;
    is_double = d;
   }
  }
 }

 if (div && half) {
  *div = best_m;
  *half = is_double;
 }

 return best_rate;
}
