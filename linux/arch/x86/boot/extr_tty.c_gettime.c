
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct biosregs {int ah; int dh; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static u8 gettime(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ah = 0x02;
 intcall(0x1a, &ireg, &oreg);

 return oreg.dh;
}
