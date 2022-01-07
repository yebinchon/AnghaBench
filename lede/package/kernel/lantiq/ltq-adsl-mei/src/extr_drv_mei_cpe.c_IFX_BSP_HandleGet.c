
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DEV_Device_t ;


 int BSP_MAX_DEVICES ;
 int * dsl_devices ;

__attribute__((used)) static DSL_DEV_Device_t *
IFX_BSP_HandleGet (int maj, int num)
{
 if (num > BSP_MAX_DEVICES)
  return ((void*)0);
 return &dsl_devices[num];
}
