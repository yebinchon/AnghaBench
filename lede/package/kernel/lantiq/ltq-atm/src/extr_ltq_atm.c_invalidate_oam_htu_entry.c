
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vld; } ;


 TYPE_1__* HTU_ENTRY (int ) ;
 int OAM_F4_SEG_HTU_ENTRY ;
 int OAM_F4_TOT_HTU_ENTRY ;
 int OAM_F5_HTU_ENTRY ;

__attribute__((used)) static void invalidate_oam_htu_entry(void)
{
 HTU_ENTRY(OAM_F4_SEG_HTU_ENTRY)->vld = 0;
 HTU_ENTRY(OAM_F4_TOT_HTU_ENTRY)->vld = 0;
 HTU_ENTRY(OAM_F5_HTU_ENTRY)->vld = 0;
}
