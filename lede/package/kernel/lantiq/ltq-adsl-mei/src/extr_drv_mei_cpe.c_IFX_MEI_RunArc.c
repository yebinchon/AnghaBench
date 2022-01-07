
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int ARC_AUX_HALT ;
 int AUX_STATUS ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_ControlModeSet (int *,int ) ;
 int IFX_MEI_IRQEnable (int *) ;
 int JTAG_MASTER_MODE ;
 int MEI_DEBUG_DEC_AUX_MASK ;
 int MEI_MASTER_MODE ;
 int _IFX_MEI_DBGLongWordRead (int *,int ,int ,int*) ;
 int _IFX_MEI_DBGLongWordWrite (int *,int ,int ,int) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_RunArc (DSL_DEV_Device_t * pDev)
{
 u32 arc_debug_data = 0x0;


 IFX_MEI_ControlModeSet (pDev, MEI_MASTER_MODE);
 _IFX_MEI_DBGLongWordRead (pDev, MEI_DEBUG_DEC_AUX_MASK,
     AUX_STATUS, &arc_debug_data);


 arc_debug_data &= ~ARC_AUX_HALT;
 _IFX_MEI_DBGLongWordWrite (pDev, MEI_DEBUG_DEC_AUX_MASK,
      AUX_STATUS, arc_debug_data);


 IFX_MEI_ControlModeSet (pDev, JTAG_MASTER_MODE);

 IFX_MEI_IRQEnable (pDev);

 return DSL_DEV_MEI_ERR_SUCCESS;

}
