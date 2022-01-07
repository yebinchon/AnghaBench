
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct biosregs {int ah; int ax; int al; } ;
struct TYPE_2__ {int kbd_status; } ;


 TYPE_1__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void keyboard_init(void)
{
 struct biosregs ireg, oreg;
 initregs(&ireg);

 ireg.ah = 0x02;
 intcall(0x16, &ireg, &oreg);
 boot_params.kbd_status = oreg.al;

 ireg.ax = 0x0305;
 intcall(0x16, &ireg, ((void*)0));
}
