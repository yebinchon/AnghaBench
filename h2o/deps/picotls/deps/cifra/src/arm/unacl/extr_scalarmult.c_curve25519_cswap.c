
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int zq; int zp; int xq; int xp; int pZq; int pZp; int pXq; int pXp; } ;
typedef TYPE_1__ ST_curve25519ladderstepWorkingState ;


 int fe25519_cswap (int *,int *,int ) ;
 int swapPointersConditionally (void**,void**,int ) ;

__attribute__((used)) static void
curve25519_cswap(
    ST_curve25519ladderstepWorkingState* state,
    uint8 b
)
{




    fe25519_cswap (&state->xp, &state->xq,b);
    fe25519_cswap (&state->zp, &state->zq,b);

}
