
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 char j44 (int,int) ;
 int r1 () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void ktti_read_block( PIA *pi, char * buf, int count )

{ int k, a, b;

 for (k=0;k<count/2;k++) {
  w0(0x10); w2(0xb); w2(0xa); w2(9); w2(0xc); w2(9);
  a = r1(); w2(0xc); b = r1(); w2(9);
  buf[2*k] = j44(a,b);
  a = r1(); w2(0xc); b = r1(); w2(9);
  buf[2*k+1] = j44(a,b);
 }
}
