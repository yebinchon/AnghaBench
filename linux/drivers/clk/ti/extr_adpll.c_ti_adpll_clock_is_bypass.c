
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_adpll_data {scalar_t__ regs; } ;


 int ADPLL_STATUS_BYPASS ;
 scalar_t__ ADPLL_STATUS_OFFSET ;
 int BIT (int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static bool ti_adpll_clock_is_bypass(struct ti_adpll_data *d)
{
 u32 v;

 v = readl_relaxed(d->regs + ADPLL_STATUS_OFFSET);

 return v & BIT(ADPLL_STATUS_BYPASS);
}
