
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ INTEGRATOR_HDR_CTRL_OFFSET ;
 scalar_t__ cm_base ;
 int readl (scalar_t__) ;

u32 cm_get(void)
{
 return readl(cm_base + INTEGRATOR_HDR_CTRL_OFFSET);
}
