
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dscr_nxtptr; } ;
typedef TYPE_1__ au1x_ddma_desc_t ;


 int DSCR_GET_NXTPTR (int ) ;
 void* phys_to_virt (int ) ;

void *au1xxx_ddma_get_nextptr_virt(au1x_ddma_desc_t *dp)
{
 return phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));
}
