
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 unsigned long mult_frac (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long cdce925_pll_calculate_rate(unsigned long parent_rate,
 u16 n, u16 m)
{
 if ((!m || !n) || (m == n))
  return parent_rate;
 return mult_frac(parent_rate, (unsigned long)n, (unsigned long)m);
}
