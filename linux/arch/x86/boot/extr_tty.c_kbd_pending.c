
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int ah; int eflags; } ;


 int X86_EFLAGS_ZF ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static int kbd_pending(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ah = 0x01;
 intcall(0x16, &ireg, &oreg);

 return !(oreg.eflags & X86_EFLAGS_ZF);
}
