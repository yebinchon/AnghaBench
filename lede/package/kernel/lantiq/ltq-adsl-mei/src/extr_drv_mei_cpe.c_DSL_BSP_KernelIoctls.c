
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DEV_Device_t ;


 int IFX_MEI_Ioctls (int *,int,unsigned int,unsigned long) ;

int
DSL_BSP_KernelIoctls (DSL_DEV_Device_t * pDev, unsigned int command,
      unsigned long lon)
{
 int error = 0;

 error = IFX_MEI_Ioctls (pDev, 1, command, lon);
 return error;
}
