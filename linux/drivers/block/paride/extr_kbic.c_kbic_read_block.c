
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 char j44 (int,int) ;
 char j53 (int ) ;
 char r0 () ;
 int r1 () ;
 int r12w () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int ) ;

__attribute__((used)) static void kbic_read_block( PIA *pi, char * buf, int count )

{ int k, a, b;

        switch (pi->mode) {

        case 0: w0(0x98); w2(4); w2(6); w2(4);
                for (k=0;k<count/2;k++) {
   w2(1); w0(8); a = r1();
          w0(0x28); b = r1();
   buf[2*k] = j44(a,b);
   w2(5); b = r1();
          w0(8); a = r1();
   buf[2*k+1] = j44(a,b);
   w2(4);
                }
                break;

        case 1: w0(0xb8); w2(4); w2(6); w2(4);
                for (k=0;k<count/4;k++) {
                        w0(0xb8);
   w2(4); w2(5);
                        w0(8); buf[4*k] = j53(r12w());
   w0(0xb8); buf[4*k+1] = j53(r12w());
   w2(4); w2(5);
             buf[4*k+3] = j53(r12w());
   w0(8); buf[4*k+2] = j53(r12w());
                }
                w2(4);
                break;

        case 2: w0(0x88); w2(4); w2(6); w2(4);
                for (k=0;k<count/2;k++) {
                        w2(0xa0); w2(0xa1); buf[2*k] = r0();
                        w2(0xa5); buf[2*k+1] = r0();
                }
                w2(4);
                break;

        case 3: w0(0xa0); w2(4); w2(6); w2(4); w3(0);
                for (k=0;k<count;k++) buf[k] = r4();
                w2(4); w2(0); w2(4);
                break;

 case 4: w0(0xa0); w2(4); w2(6); w2(4); w3(0);
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = r4w();
                w2(4); w2(0); w2(4);
                break;

        case 5: w0(0xa0); w2(4); w2(6); w2(4); w3(0);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = r4l();
                w2(4); w2(0); w2(4);
                break;


        }
}
