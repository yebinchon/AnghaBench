
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ va; } ;


 TYPE_1__ cm_base ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 am33xx_cm_read_reg(u16 inst, u16 idx)
{
 return readl_relaxed(cm_base.va + inst + idx);
}
