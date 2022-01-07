
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct flash_platform_data {char* name; } ;
struct TYPE_3__ {int num_resources; struct resource* resource; } ;


 int sa11x0_register_device (TYPE_1__*,struct flash_platform_data*) ;
 TYPE_1__ sa11x0mtd_device ;

void sa11x0_register_mtd(struct flash_platform_data *flash,
    struct resource *res, int nr)
{
 flash->name = "sa1100";
 sa11x0mtd_device.resource = res;
 sa11x0mtd_device.num_resources = nr;
 sa11x0_register_device(&sa11x0mtd_device, flash);
}
