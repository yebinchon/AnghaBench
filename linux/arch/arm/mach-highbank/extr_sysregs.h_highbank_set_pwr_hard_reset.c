
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_PWR_HARD_RESET ;
 scalar_t__ HB_SREG_A9_PWR_REQ ;
 int highbank_set_core_pwr () ;
 scalar_t__ sregs_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void highbank_set_pwr_hard_reset(void)
{
 writel(HB_PWR_HARD_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
 highbank_set_core_pwr();
}
