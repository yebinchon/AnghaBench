
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int WR (int,int) ;
 int r0 () ;
 int r2 () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void epia_connect ( PIA *pi )

{ pi->saved_r0 = r0();
        pi->saved_r2 = r2();

        w2(4); w0(0xa0); w0(0x50); w0(0xc0); w0(0x30); w0(0xa0); w0(0);
        w2(1); w2(4);
        if (pi->mode >= 3) {
                w0(0xa); w2(1); w2(4); w0(0x82); w2(4); w2(0xc); w2(4);
                w2(0x24); w2(0x26); w2(4);
        }
        WR(0x86,8);
}
