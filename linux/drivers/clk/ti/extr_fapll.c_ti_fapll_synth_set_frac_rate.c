
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long u32 ;
struct fapll_synth {int freq; } ;


 unsigned long DIV_ROUND_UP_ULL (int,unsigned long) ;
 unsigned long EINVAL ;
 unsigned long SYNTH_LDFREQ ;
 unsigned long SYNTH_MAX_DIV_M ;
 unsigned long SYNTH_MAX_INT_DIV ;
 int SYNTH_PHASE_K ;
 unsigned long readl_relaxed (int ) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static u32 ti_fapll_synth_set_frac_rate(struct fapll_synth *synth,
     unsigned long rate,
     unsigned long parent_rate)
{
 u32 post_div_m, synth_int_div = 0, synth_frac_div = 0, v;

 post_div_m = DIV_ROUND_UP_ULL((u64)parent_rate * SYNTH_PHASE_K, rate);
 post_div_m = post_div_m / SYNTH_MAX_INT_DIV;
 if (post_div_m > SYNTH_MAX_DIV_M)
  return -EINVAL;
 if (!post_div_m)
  post_div_m = 1;

 for (; post_div_m < SYNTH_MAX_DIV_M; post_div_m++) {
  synth_int_div = DIV_ROUND_UP_ULL((u64)parent_rate *
       SYNTH_PHASE_K *
       10000000,
       rate * post_div_m);
  synth_frac_div = synth_int_div % 10000000;
  synth_int_div /= 10000000;

  if (synth_int_div <= SYNTH_MAX_INT_DIV)
   break;
 }

 if (synth_int_div > SYNTH_MAX_INT_DIV)
  return -EINVAL;

 v = readl_relaxed(synth->freq);
 v &= ~0x1fffffff;
 v |= (synth_int_div & SYNTH_MAX_INT_DIV) << 24;
 v |= (synth_frac_div & 0xffffff);
 v |= SYNTH_LDFREQ;
 writel_relaxed(v, synth->freq);

 return post_div_m;
}
