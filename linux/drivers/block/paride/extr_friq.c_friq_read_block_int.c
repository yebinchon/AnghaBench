
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int CMD (int) ;
 char j44 (int,int) ;
 char r0 () ;
 int r1 () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void friq_read_block_int( PIA *pi, char * buf, int count, int regr )

{ int h, l, k, ph;

        switch(pi->mode) {

        case 0: CMD(regr);
                for (k=0;k<count;k++) {
                        w2(6); l = r1();
                        w2(4); h = r1();
                        buf[k] = j44(l,h);
                }
                w2(4);
                break;

        case 1: ph = 2;
                CMD(regr+0xc0);
                w0(0xff);
                for (k=0;k<count;k++) {
                        w2(0xa4 + ph);
                        buf[k] = r0();
                        ph = 2 - ph;
                }
                w2(0xac); w2(0xa4); w2(4);
                break;

 case 2: CMD(regr+0x80);
  for (k=0;k<count-2;k++) buf[k] = r4();
  w2(0xac); w2(0xa4);
  buf[count-2] = r4();
  buf[count-1] = r4();
  w2(4);
  break;

 case 3: CMD(regr+0x80);
                for (k=0;k<(count/2)-1;k++) ((u16 *)buf)[k] = r4w();
                w2(0xac); w2(0xa4);
                buf[count-2] = r4();
                buf[count-1] = r4();
                w2(4);
                break;

 case 4: CMD(regr+0x80);
                for (k=0;k<(count/4)-1;k++) ((u32 *)buf)[k] = r4l();
                buf[count-4] = r4();
                buf[count-3] = r4();
                w2(0xac); w2(0xa4);
                buf[count-2] = r4();
                buf[count-1] = r4();
                w2(4);
                break;

        }
}
