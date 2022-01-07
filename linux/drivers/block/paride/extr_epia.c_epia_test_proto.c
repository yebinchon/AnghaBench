
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int RR (int) ;
 int WR (int,int) ;
 int epia_connect (TYPE_1__*) ;
 int epia_disconnect (TYPE_1__*) ;
 int epia_read_block (TYPE_1__*,char*,int) ;
 int printk (char*,int ,int ,int ,int,int,int) ;

__attribute__((used)) static int epia_test_proto( PIA *pi, char * scratch, int verbose )

{ int j, k, f;
 int e[2] = {0,0};

        epia_connect(pi);
        for (j=0;j<2;j++) {
            WR(6,0xa0+j*0x10);
            for (k=0;k<256;k++) {
                WR(2,k^0xaa);
                WR(3,k^0x55);
                if (RR(2) != (k^0xaa)) e[j]++;
                }
     WR(2,1); WR(3,1);
            }
        epia_disconnect(pi);

        f = 0;
        epia_connect(pi);
        WR(0x84,8);
        epia_read_block(pi,scratch,512);
        for (k=0;k<256;k++) {
            if ((scratch[2*k] & 0xff) != ((k+1) & 0xff)) f++;
            if ((scratch[2*k+1] & 0xff) != ((-2-k) & 0xff)) f++;
        }
        WR(0x84,0);
        epia_disconnect(pi);

        if (verbose) {
            printk("%s: epia: port 0x%x, mode %d, test=(%d,%d,%d)\n",
                   pi->device,pi->port,pi->mode,e[0],e[1],f);
        }

        return (e[0] && e[1]) || f;

}
