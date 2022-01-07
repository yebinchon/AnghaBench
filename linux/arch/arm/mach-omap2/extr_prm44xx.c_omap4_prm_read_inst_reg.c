
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
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 omap4_prm_read_inst_reg(s16 inst, u16 reg)
{
 return readl_relaxed(prm_base.va + inst + reg);
}
