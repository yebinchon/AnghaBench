
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct biosregs {int ah; int ax; } ;
struct TYPE_3__ {int ext_mem_k; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void detect_memory_88(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ah = 0x88;
 intcall(0x15, &ireg, &oreg);

 boot_params.screen_info.ext_mem_k = oreg.ax;
}
