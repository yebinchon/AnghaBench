
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_freq_tbl {long freq; } ;



__attribute__((used)) static const
struct pll_freq_tbl *find_freq(const struct pll_freq_tbl *f, unsigned long rate)
{
 if (!f)
  return ((void*)0);

 for (; f->freq; f++)
  if (rate <= f->freq)
   return f;

 return ((void*)0);
}
