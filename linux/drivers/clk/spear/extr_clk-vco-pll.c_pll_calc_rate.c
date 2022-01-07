
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_rate_tbl {int mode; int m; unsigned int n; int p; } ;



__attribute__((used)) static unsigned long pll_calc_rate(struct pll_rate_tbl *rtbl,
  unsigned long prate, int index, unsigned long *pll_rate)
{
 unsigned long rate = prate;
 unsigned int mode;

 mode = rtbl[index].mode ? 256 : 1;
 rate = (((2 * rate / 10000) * rtbl[index].m) / (mode * rtbl[index].n));

 if (pll_rate)
  *pll_rate = (rate / (1 << rtbl[index].p)) * 10000;

 return rate * 10000;
}
