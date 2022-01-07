
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_IRQDisable (int *) ;
 int IFX_MEI_IRQEnable (int *) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_AdslMailboxIRQEnable (DSL_DEV_Device_t *pDev, int enable)
{
 DSL_DEV_MeiError_t meierr;
 switch (enable) {
 case 0:
  meierr = DSL_DEV_MEI_ERR_SUCCESS;
  IFX_MEI_IRQDisable (pDev);
  break;
 case 1:
  IFX_MEI_IRQEnable (pDev);
  meierr = DSL_DEV_MEI_ERR_SUCCESS;
  break;
 default:
  meierr = DSL_DEV_MEI_ERR_FAILURE;
  break;

 }
 return meierr;
}
