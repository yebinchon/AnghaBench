
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {scalar_t__ va; } ;


 TYPE_1__ cm_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void omap2_cm_write_mod_reg(u32 val, s16 module, u16 idx)
{
 writel_relaxed(val, cm_base.va + module + idx);
}
