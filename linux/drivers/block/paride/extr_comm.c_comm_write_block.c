
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int pi_swab16 (char*,int) ;
 int pi_swab32 (char*,int) ;
 int r1 () ;
 int w0 (char) ;
 int w2 (int) ;
 int w3 (int) ;
 int w4 (char) ;
 int w4l (int ) ;
 int w4w (int ) ;

__attribute__((used)) static void comm_write_block( PIA *pi, char * buf, int count )

{ int k;

        switch (pi->mode) {

        case 0:
        case 1: w0(0x68); P1;
         for (k=0;k<count;k++) {
                        w2(5); w0(buf[k^1]); w2(7);
                }
                w2(5); w2(4);
                break;

        case 2: w3(0x48); (void)r1();
                for (k=0;k<count;k++) w4(buf[k^1]);
                break;

        case 3: w3(0x48); (void)r1();
                for (k=0;k<count/2;k++) w4w(pi_swab16(buf,k));
                break;

        case 4: w3(0x48); (void)r1();
                for (k=0;k<count/4;k++) w4l(pi_swab32(buf,k));
                break;


        }
}
