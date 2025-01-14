
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_adpll_data {scalar_t__ regs; } ;


 scalar_t__ ADPLL_STATUS_OFFSET ;
 int ADPLL_STATUS_PREPARED_MASK ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static bool ti_adpll_is_locked(struct ti_adpll_data *d)
{
 u32 v = readl_relaxed(d->regs + ADPLL_STATUS_OFFSET);

 return (v & ADPLL_STATUS_PREPARED_MASK) == ADPLL_STATUS_PREPARED_MASK;
}
