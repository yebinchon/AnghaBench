
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int SPR_TTCR ;
 int SPR_TTMR ;
 unsigned long SPR_TTMR_CR ;
 unsigned long SPR_TTMR_IE ;
 unsigned long SPR_TTMR_TP ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;

inline void openrisc_timer_set_next(unsigned long delta)
{
 u32 c;





 c = mfspr(SPR_TTCR);
 c += delta;
 c &= SPR_TTMR_TP;




 mtspr(SPR_TTMR, SPR_TTMR_CR | SPR_TTMR_IE | c);
}
