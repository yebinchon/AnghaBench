
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HB_SREG_A9_PWR_REQ ;
 int highbank_clear_core_pwr () ;
 scalar_t__ sregs_base ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void highbank_clear_pwr_request(void)
{
 writel(~0UL, sregs_base + HB_SREG_A9_PWR_REQ);
 highbank_clear_core_pwr();
}
