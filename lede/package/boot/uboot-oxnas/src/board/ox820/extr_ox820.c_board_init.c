
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bd; } ;
struct TYPE_3__ {int bi_arch_number; scalar_t__ bi_boot_params; } ;


 scalar_t__ CONFIG_SYS_SDRAM_BASE ;
 int MACH_TYPE_OXNAS ;
 TYPE_2__* gd ;
 int ide_init () ;
 int puts (char*) ;

int board_init(void)
{
 gd->bd->bi_boot_params = CONFIG_SYS_SDRAM_BASE + 0x100;
 gd->bd->bi_arch_number = MACH_TYPE_OXNAS;
 return 0;
}
