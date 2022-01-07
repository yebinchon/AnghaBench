
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpsr; int * fType; } ;
typedef TYPE_1__ FPA11 ;


 int BIT_AC ;
 int FP_EMULATOR ;
 TYPE_1__* GET_FPA11 () ;
 int typeNone ;

__attribute__((used)) static void resetFPA11(void)
{
 int i;
 FPA11 *fpa11 = GET_FPA11();


 for (i = 0; i <= 7; i++) {
  fpa11->fType[i] = typeNone;
 }


 fpa11->fpsr = FP_EMULATOR | BIT_AC;
}
