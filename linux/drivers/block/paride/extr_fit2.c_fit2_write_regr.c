
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void fit2_write_regr( PIA *pi, int cont, int regr, int val)

{ if (cont == 1) return;
 w2(0xc); w0(regr); w2(4); w0(val); w2(5); w0(0); w2(4);
}
