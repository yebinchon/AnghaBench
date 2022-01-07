
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int P2 ;
 int* cont_map ;
 int r1 () ;
 int w0 (int) ;
 int w3 (int) ;
 int w4 (int) ;

__attribute__((used)) static void comm_write_regr( PIA *pi, int cont, int regr, int val )

{ int r;

        r = regr + cont_map[cont];

        switch (pi->mode) {

        case 0:
        case 1: w0(r); P1; w0(val); P2;
  break;

 case 2:
 case 3:
        case 4: w3(r); (void)r1(); w4(val);
                break;
        }
}
