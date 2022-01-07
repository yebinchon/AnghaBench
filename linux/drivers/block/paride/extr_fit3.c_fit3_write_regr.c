
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int w0 (int) ;
 int w2 (int) ;
 int w4 (int) ;

__attribute__((used)) static void fit3_write_regr( PIA *pi, int cont, int regr, int val)

{ if (cont == 1) return;

 switch (pi->mode) {

 case 0:
 case 1: w2(0xc); w0(regr); w2(0x8); w2(0xc);
  w0(val); w2(0xd);
  w0(0); w2(0xc);
  break;

 case 2: w2(0xc); w0(regr); w2(0x8); w2(0xc);
  w4(val); w4(0);
  w2(0xc);
  break;

 }
}
