
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_mask; } ;


 TYPE_1__* octeon_boot_desc_ptr ;

int octeon_get_boot_coremask(void)
{
 return octeon_boot_desc_ptr->core_mask;
}
