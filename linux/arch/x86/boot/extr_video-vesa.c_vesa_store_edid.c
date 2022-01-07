
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct biosregs {int ax; int bx; size_t di; scalar_t__ es; } ;
struct TYPE_4__ {int edid_info; } ;
struct TYPE_3__ {int version; } ;


 TYPE_2__ boot_params ;
 scalar_t__ ds () ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;
 int memset (int *,int,int) ;
 TYPE_1__ vginfo ;

void vesa_store_edid(void)
{
}
