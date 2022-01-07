
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_tbl {long freq; } ;



const struct freq_tbl *qcom_find_freq_floor(const struct freq_tbl *f,
         unsigned long rate)
{
 const struct freq_tbl *best = ((void*)0);

 for ( ; f->freq; f++) {
  if (rate >= f->freq)
   best = f;
  else
   break;
 }

 return best;
}
