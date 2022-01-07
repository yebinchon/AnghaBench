
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {scalar_t__ va; } ;


 int BUG_ON (int) ;
 size_t OMAP4430_INVALID_PRCM_PARTITION ;
 size_t OMAP4_MAX_PRCM_PARTITIONS ;
 TYPE_1__* _prm_bases ;
 int writel_relaxed (int ,scalar_t__) ;

void omap4_prminst_write_inst_reg(u32 val, u8 part, s16 inst, u16 idx)
{
 BUG_ON(part >= OMAP4_MAX_PRCM_PARTITIONS ||
        part == OMAP4430_INVALID_PRCM_PARTITION ||
        !_prm_bases[part].va);
 writel_relaxed(val, _prm_bases[part].va + inst + idx);
}
