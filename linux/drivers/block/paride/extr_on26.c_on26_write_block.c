
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
 int udelay (int) ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;
 int w4 (int) ;
 int w4l (int ) ;
 int w4w (int ) ;

__attribute__((used)) static void on26_write_block( PIA *pi, char * buf, int count )

{ int k;

        switch (pi->mode) {

        case 0:
        case 1: w0(1); P1; w0(1); P2;
  w0(2); P1; w0(0x18+pi->mode); P2; w0(0); P1;
  udelay(10);
  for (k=0;k<count/2;k++) {
                        w2(5); w0(buf[2*k]);
   w2(7); w0(buf[2*k+1]);
                }
                w2(5); w2(4);
  w0(2); P1; w0(8+pi->mode); P2;
                break;

        case 2: w3(1); w3(1); w2(5); w4(1); w2(4);
  w3(0); w3(0); w2(0xc5);
  udelay(10);
                for (k=0;k<count;k++) w4(buf[k]);
  w2(0xc4);
                break;

        case 3: w3(1); w3(1); w2(5); w4(1); w2(4);
                w3(0); w3(0); w2(0xc5);
                udelay(10);
                for (k=0;k<count/2;k++) w4w(((u16 *)buf)[k]);
                w2(0xc4);
                break;

        case 4: w3(1); w3(1); w2(5); w4(1); w2(4);
                w3(0); w3(0); w2(0xc5);
                udelay(10);
                for (k=0;k<count/4;k++) w4l(((u32 *)buf)[k]);
                w2(0xc4);
                break;

        }

}
