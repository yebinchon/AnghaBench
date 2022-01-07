
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ pa; } ;


 TYPE_1__ cm_base ;

__attribute__((used)) static u32 am33xx_cm_xlate_clkctrl(u8 part, u16 inst, u16 offset)
{
 return cm_base.pa + inst + offset;
}
