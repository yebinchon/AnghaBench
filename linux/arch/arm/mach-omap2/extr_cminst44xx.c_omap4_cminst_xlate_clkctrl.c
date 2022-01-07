
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ pa; } ;


 TYPE_1__* _cm_bases ;

__attribute__((used)) static u32 omap4_cminst_xlate_clkctrl(u8 part, u16 inst, u16 offset)
{
 return _cm_bases[part].pa + inst + offset;
}
