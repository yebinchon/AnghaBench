
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int CCP (int) ;
 int r0 () ;
 int r2 () ;
 int w2 (int) ;

__attribute__((used)) static void k971_connect ( PIA *pi )

{ pi->saved_r0 = r0();
        pi->saved_r2 = r2();
 CCP(0x20);
        w2(4);
}
