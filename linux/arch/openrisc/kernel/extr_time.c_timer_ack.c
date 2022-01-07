
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_TTMR ;
 int SPR_TTMR_CR ;
 int mtspr (int ,int ) ;

__attribute__((used)) static inline void timer_ack(void)
{





 mtspr(SPR_TTMR, SPR_TTMR_CR);
}
