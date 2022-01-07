
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wrpll_cfg {int flags; } ;


 int WRPLL_FLAGS_INT_FEEDBACK_MASK ;

__attribute__((used)) static u8 __wrpll_calc_fbdiv(const struct wrpll_cfg *c)
{
 return (c->flags & WRPLL_FLAGS_INT_FEEDBACK_MASK) ? 2 : 1;
}
