
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int saved_r0; int mode; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int CMD (int) ;
 int friq_connect (TYPE_1__*) ;
 int friq_disconnect (TYPE_1__*) ;
 int friq_read_block_int (TYPE_1__*,char*,int,int) ;
 int friq_read_regr (TYPE_1__*,int ,int) ;
 int friq_write_regr (TYPE_1__*,int ,int,int) ;
 int printk (char*,int ,int ,int ,int,int,int) ;
 int r0 () ;
 int udelay (int) ;
 int w0 (int) ;

__attribute__((used)) static int friq_test_proto( PIA *pi, char * scratch, int verbose )

{ int j, k, r;
 int e[2] = {0,0};

 pi->saved_r0 = r0();
 w0(0xff); udelay(20); CMD(0x3d);
 udelay(500);
 w0(pi->saved_r0);

 friq_connect(pi);
 for (j=0;j<2;j++) {
                friq_write_regr(pi,0,6,0xa0+j*0x10);
                for (k=0;k<256;k++) {
                        friq_write_regr(pi,0,2,k^0xaa);
                        friq_write_regr(pi,0,3,k^0x55);
                        if (friq_read_regr(pi,0,2) != (k^0xaa)) e[j]++;
                        }
                }
 friq_disconnect(pi);

 friq_connect(pi);
        friq_read_block_int(pi,scratch,512,0x10);
        r = 0;
        for (k=0;k<128;k++) if (scratch[k] != k) r++;
 friq_disconnect(pi);

        if (verbose) {
            printk("%s: friq: port 0x%x, mode %d, test=(%d,%d,%d)\n",
                   pi->device,pi->port,pi->mode,e[0],e[1],r);
        }

        return (r || (e[0] && e[1]));
}
