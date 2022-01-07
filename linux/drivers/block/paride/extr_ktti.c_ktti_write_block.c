
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int w0 (char) ;
 int w2 (int) ;

__attribute__((used)) static void ktti_write_block( PIA *pi, char * buf, int count )

{ int k;

 for (k=0;k<count/2;k++) {
  w0(0x10); w2(0xb); w2(0xa); w2(3); w2(6);
  w0(buf[2*k]); w2(3);
  w0(buf[2*k+1]); w2(6);
  w2(0xb);
 }
}
