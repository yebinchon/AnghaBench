
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {scalar_t__ va; } ;


 TYPE_1__ prm_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void omap4_prm_write_inst_reg(u32 val, s16 inst, u16 reg)
{
 writel_relaxed(val, prm_base.va + inst + reg);
}
