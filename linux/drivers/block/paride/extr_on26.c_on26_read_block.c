
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int P2 ;
 char j44 (int,int) ;
 char r0 () ;
 int r1 () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int udelay (int) ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;
 int w4 (int) ;

__attribute__((used)) static void on26_read_block( PIA *pi, char * buf, int count )

{ int k, a, b;

        switch (pi->mode) {

        case 0: w0(1); P1; w0(1); P2; w0(2); P1; w0(0x18); P2; w0(0); P1;
  udelay(10);
  for (k=0;k<count;k++) {
                        w2(6); a = r1();
                        w2(4); b = r1();
                        buf[k] = j44(a,b);
                }
  w0(2); P1; w0(8); P2;
                break;

        case 1: w0(1); P1; w0(1); P2; w0(2); P1; w0(0x19); P2; w0(0); P1;
  udelay(10);
                for (k=0;k<count/2;k++) {
                        w2(0x26); buf[2*k] = r0();
   w2(0x24); buf[2*k+1] = r0();
                }
                w0(2); P1; w0(9); P2;
                break;

        case 2: w3(1); w3(1); w2(5); w4(1); w2(4);
  w3(0); w3(0); w2(0x24);
  udelay(10);
                for (k=0;k<count;k++) buf[k] = r4();
                w2(4);
                break;

        case 3: w3(1); w3(1); w2(5); w4(1); w2(4);
                w3(0); w3(0); w2(0x24);
                udelay(10);
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = r4w();
                w2(4);
                break;

        case 4: w3(1); w3(1); w2(5); w4(1); w2(4);
                w3(0); w3(0); w2(0x24);
                udelay(10);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = r4l();
                w2(4);
                break;

        }
}
