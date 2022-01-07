
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int bx; int cx; int ah; int al; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;

__attribute__((used)) static void __attribute__((section(".inittext"))) bios_putchar(int ch)
{
 struct biosregs ireg;

 initregs(&ireg);
 ireg.bx = 0x0007;
 ireg.cx = 0x0001;
 ireg.ah = 0x0e;
 ireg.al = ch;
 intcall(0x10, &ireg, ((void*)0));
}
