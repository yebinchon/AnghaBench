
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_uint32_t ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;
typedef int DSL_BSP_MemoryAccessType_t ;




 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_DebugRead (int *,int ,int *,int ) ;
 int IFX_MEI_DebugWrite (int *,int ,int *,int ) ;

DSL_DEV_MeiError_t
DSL_BSP_MemoryDebugAccess (DSL_DEV_Device_t * pDev,
    DSL_BSP_MemoryAccessType_t type,
    DSL_uint32_t destaddr, DSL_uint32_t *databuff,
    DSL_uint32_t databuffsize)
{
 DSL_DEV_MeiError_t meierr = DSL_DEV_MEI_ERR_SUCCESS;
 switch (type) {
 case 129:
  meierr = IFX_MEI_DebugRead (pDev, (u32)destaddr, (u32*)databuff, (u32)databuffsize);
  break;
 case 128:
  meierr = IFX_MEI_DebugWrite (pDev, (u32)destaddr, (u32*)databuff, (u32)databuffsize);
  break;
 }
 return DSL_DEV_MEI_ERR_SUCCESS;
}
