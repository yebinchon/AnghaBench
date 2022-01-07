
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int al; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

int getchar(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);

 intcall(0x16, &ireg, &oreg);

 return oreg.al;
}
