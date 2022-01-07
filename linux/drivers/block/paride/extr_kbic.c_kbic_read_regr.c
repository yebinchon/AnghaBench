
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int* cont_map ;
 int j44 (int,int) ;
 int j53 (int) ;
 int r0 () ;
 int r1 () ;
 int r12w () ;
 int r4 () ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;

__attribute__((used)) static int kbic_read_regr( PIA *pi, int cont, int regr )

{ int a, b, s;

        s = cont_map[cont];

 switch (pi->mode) {

 case 0: w0(regr|0x18|s); w2(4); w2(6); w2(4); w2(1); w0(8);
         a = r1(); w0(0x28); b = r1(); w2(4);
  return j44(a,b);

 case 1: w0(regr|0x38|s); w2(4); w2(6); w2(4); w2(5); w0(8);
  a = r12w(); w2(4);
  return j53(a);

 case 2: w0(regr|0x08|s); w2(4); w2(6); w2(4); w2(0xa5); w2(0xa1);
  a = r0(); w2(4);
         return a;

 case 3:
 case 4:
 case 5: w0(0x20|s); w2(4); w2(6); w2(4); w3(regr);
  a = r4(); b = r4(); w2(4); w2(0); w2(4);
  return a;

 }
 return -1;
}
