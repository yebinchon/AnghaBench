
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int sigh; } ;
typedef TYPE_1__ FPU_REG ;


 int EXP_OVER ;
 int FPU_Special (TYPE_1__*) ;
 scalar_t__ SIGN_NEG ;
 int SW_C0 ;
 int SW_C1 ;
 int SW_C2 ;
 int SW_C3 ;







 int exponent (TYPE_1__*) ;
 scalar_t__ getsign (TYPE_1__*) ;
 int setcc (int) ;

__attribute__((used)) static void fxam(FPU_REG *st0_ptr, u_char st0tag)
{
 int c = 0;
 switch (st0tag) {
 case 134:
  c = SW_C3 | SW_C0;
  break;
 case 131:
  c = SW_C3;
  break;
 case 132:
  c = SW_C2;
  break;
 case 133:
  switch (FPU_Special(st0_ptr)) {
  case 130:
   c = SW_C2 | SW_C3;
   break;
  case 128:

   if ((st0_ptr->sigh & 0x80000000)
       && (exponent(st0_ptr) == EXP_OVER))
    c = SW_C0;
   break;
  case 129:
   c = SW_C2 | SW_C0;
   break;
  }
 }
 if (getsign(st0_ptr) == SIGN_NEG)
  c |= SW_C1;
 setcc(c);
}
