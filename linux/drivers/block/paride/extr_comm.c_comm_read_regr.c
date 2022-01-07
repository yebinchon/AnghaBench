
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int* cont_map ;
 int j44 (int,int) ;
 int r0 () ;
 int r1 () ;
 int r4 () ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;

__attribute__((used)) static int comm_read_regr( PIA *pi, int cont, int regr )

{ int l, h, r;

        r = regr + cont_map[cont];

        switch (pi->mode) {

        case 0: w0(r); P1; w0(0);
         w2(6); l = r1(); w0(0x80); h = r1(); w2(4);
                return j44(l,h);

        case 1: w0(r+0x20); P1;
         w0(0); w2(0x26); h = r0(); w2(4);
                return h;

 case 2:
 case 3:
        case 4: w3(r+0x20); (void)r1();
         w2(0x24); h = r4(); w2(4);
                return h;

        }
        return -1;
}
