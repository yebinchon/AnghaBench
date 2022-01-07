
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int modem_ready; } ;
typedef int DSL_DEV_Device_t ;


 TYPE_1__* DSL_DEV_PRIVATE (int *) ;

__attribute__((used)) static int
IFX_MEI_IsModemReady (DSL_DEV_Device_t * pDev)
{
 return DSL_DEV_PRIVATE(pDev)->modem_ready;
}
