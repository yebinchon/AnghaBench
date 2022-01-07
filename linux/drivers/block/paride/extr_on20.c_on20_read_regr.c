
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int j44 (int,int) ;
 int op (int) ;
 int r0 () ;
 int r1 () ;
 int vl (int) ;
 int w2 (int) ;

__attribute__((used)) static int on20_read_regr( PIA *pi, int cont, int regr )

{ int h,l, r ;

        r = (regr<<2) + 1 + cont;

        op(1); vl(r); op(0);

 switch (pi->mode) {

        case 0: w2(4); w2(6); l = r1();
                 w2(4); w2(6); h = r1();
                 w2(4); w2(6); w2(4); w2(6); w2(4);
   return j44(l,h);

 case 1: w2(4); w2(0x26); r = r0();
                 w2(4); w2(0x26); w2(4);
   return r;

 }
 return -1;
}
