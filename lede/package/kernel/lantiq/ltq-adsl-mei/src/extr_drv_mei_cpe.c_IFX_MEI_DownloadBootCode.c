
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_DownloadBootPages (int *) ;
 int IFX_MEI_EnableCLK (int *) ;
 int IFX_MEI_FuseProg (int *) ;
 int IFX_MEI_IRQDisable (int *) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_DownloadBootCode (DSL_DEV_Device_t *pDev)
{
 IFX_MEI_IRQDisable (pDev);

 IFX_MEI_EnableCLK (pDev);

 IFX_MEI_FuseProg (pDev);

 IFX_MEI_DownloadBootPages (pDev);

 return DSL_DEV_MEI_ERR_SUCCESS;
}
