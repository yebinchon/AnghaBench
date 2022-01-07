
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ base_address; } ;
typedef TYPE_1__ DSL_DEV_Device_t ;


 scalar_t__ IFX_MEI_READ_REGISTER_L (scalar_t__) ;
 int rmb () ;

__attribute__((used)) static void
IFX_MEI_LongWordReadOffset (DSL_DEV_Device_t * pDev, u32 ul_address,
      u32 * pul_data)
{
 *pul_data = IFX_MEI_READ_REGISTER_L (pDev->base_address + ul_address);
 rmb();
 return;
}
