
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct biosregs {int ax; int bh; } ;
struct TYPE_4__ {scalar_t__ rsvd_pos; scalar_t__ blue_pos; scalar_t__ green_pos; scalar_t__ red_pos; void* rsvd_size; void* blue_size; void* green_size; void* red_size; } ;
struct TYPE_6__ {TYPE_1__ screen_info; } ;
struct TYPE_5__ {int capabilities; } ;


 TYPE_3__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;
 TYPE_2__ vginfo ;

__attribute__((used)) static void vesa_dac_set_8bits(void)
{
 struct biosregs ireg, oreg;
 u8 dac_size = 6;


 if (vginfo.capabilities & 1) {
  initregs(&ireg);
  ireg.ax = 0x4f08;
  ireg.bh = 0x08;
  intcall(0x10, &ireg, &oreg);
  if (oreg.ax == 0x004f)
   dac_size = oreg.bh;
 }


 boot_params.screen_info.red_size = dac_size;
 boot_params.screen_info.green_size = dac_size;
 boot_params.screen_info.blue_size = dac_size;
 boot_params.screen_info.rsvd_size = dac_size;

 boot_params.screen_info.red_pos = 0;
 boot_params.screen_info.green_pos = 0;
 boot_params.screen_info.blue_pos = 0;
 boot_params.screen_info.rsvd_pos = 0;
}
