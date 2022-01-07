
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
 char j44 (int,int) ;
 char r0 () ;
 int r1 () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;

__attribute__((used)) static void comm_read_block( PIA *pi, char * buf, int count )

{ int i, l, h;

        switch (pi->mode) {

        case 0: w0(0x48); P1;
                for(i=0;i<count;i++) {
                        w0(0); w2(6); l = r1();
                        w0(0x80); h = r1(); w2(4);
                        buf[i] = j44(l,h);
                }
                break;

        case 1: w0(0x68); P1; w0(0);
                for(i=0;i<count;i++) {
                        w2(0x26); buf[i] = r0(); w2(0x24);
                }
  w2(4);
  break;

 case 2: w3(0x68); (void)r1(); w2(0x24);
  for (i=0;i<count;i++) buf[i] = r4();
  w2(4);
  break;

        case 3: w3(0x68); (void)r1(); w2(0x24);
                for (i=0;i<count/2;i++) ((u16 *)buf)[i] = r4w();
                w2(4);
                break;

        case 4: w3(0x68); (void)r1(); w2(0x24);
                for (i=0;i<count/4;i++) ((u32 *)buf)[i] = r4l();
                w2(4);
                break;

 }
}
