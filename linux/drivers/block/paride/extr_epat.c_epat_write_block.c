
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int w0 (char) ;
 int w2 (int) ;
 int w3 (int) ;
 int w4 (char) ;
 int w4l (int ) ;
 int w4w (int ) ;

__attribute__((used)) static void epat_write_block( PIA *pi, char * buf, int count )

{ int ph, k;

 switch (pi->mode) {

 case 0:
 case 1:
 case 2: w0(0x67); w2(1); w2(5);
  ph = 0;
  for(k=0;k<count;k++) {
     w0(buf[k]);
   w2(4+ph);
   ph = 1 - ph;
  }
  w2(7); w2(4);
  break;

 case 3: w3(0xc0);
  for(k=0;k<count;k++) w4(buf[k]);
  w2(4);
  break;

 case 4: w3(0xc0);
  for(k=0;k<(count/2);k++) w4w(((u16 *)buf)[k]);
  w2(4);
  break;

 case 5: w3(0xc0);
  for(k=0;k<(count/4);k++) w4l(((u32 *)buf)[k]);
  w2(4);
  break;

 }
}
