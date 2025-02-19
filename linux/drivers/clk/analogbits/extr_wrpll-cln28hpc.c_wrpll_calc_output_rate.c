
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u64 ;
struct wrpll_cfg {int flags; int divf; unsigned long divq; scalar_t__ divr; } ;


 unsigned long ULONG_MAX ;
 int WARN (int,char*) ;
 int WRPLL_FLAGS_EXT_FEEDBACK_MASK ;
 unsigned long __wrpll_calc_fbdiv (struct wrpll_cfg const*) ;
 unsigned long div_u64 (unsigned long,scalar_t__) ;

unsigned long wrpll_calc_output_rate(const struct wrpll_cfg *c,
         unsigned long parent_rate)
{
 u8 fbdiv;
 u64 n;

 if (c->flags & WRPLL_FLAGS_EXT_FEEDBACK_MASK) {
  WARN(1, "external feedback mode not yet supported");
  return ULONG_MAX;
 }

 fbdiv = __wrpll_calc_fbdiv(c);
 n = parent_rate * fbdiv * (c->divf + 1);
 n = div_u64(n, c->divr + 1);
 n >>= c->divq;

 return n;
}
