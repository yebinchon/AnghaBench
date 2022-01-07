
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_6__ {unsigned char* as_uint8; } ;
struct TYPE_7__ {int nextScalarBitToProcess; size_t previousProcessedBit; int xp; int zp; int x0; int zq; int xq; int * pXp; int * pZp; int * pZq; int * pXq; TYPE_1__ s; } ;
typedef TYPE_2__ ST_curve25519ladderstepWorkingState ;


 int curve25519_cswap (TYPE_2__*,size_t) ;
 int curve25519_doublePointP (TYPE_2__*) ;
 int curve25519_ladderstep (TYPE_2__*) ;
 int fe25519_cpy (int *,int *) ;
 int fe25519_invert_useProvidedScratchBuffers (int *,int *,int *,int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_pack (unsigned char*,int *) ;
 int fe25519_reduceCompletely (int *) ;
 int fe25519_setone (int *) ;
 int fe25519_setzero (int *) ;
 int fe25519_unpack (int *,unsigned char const*) ;

int
crypto_scalarmult_curve25519(
    unsigned char* r,
    const unsigned char* s,
    const unsigned char* p
)
{
    ST_curve25519ladderstepWorkingState state;
    unsigned char i;



    for (i = 0; i < 32; i++)
    {
        state.s.as_uint8 [i] = s[i];
    }




    state.s.as_uint8 [0] &= 248;

    state.s.as_uint8 [31] &= 127;
    state.s.as_uint8 [31] |= 64;


    fe25519_unpack (&state.x0, p);



    fe25519_setone (&state.zq);
    fe25519_cpy (&state.xq, &state.x0);

    fe25519_setone(&state.xp);
    fe25519_setzero(&state.zp);

    state.nextScalarBitToProcess = 254;
    state.previousProcessedBit = 0;






    while (state.nextScalarBitToProcess >= 0)

    {
     uint8 byteNo = state.nextScalarBitToProcess >> 3;
     uint8 bitNo = state.nextScalarBitToProcess & 7;
        uint8 bit;
        uint8 swap;

        bit = 1 & (state.s.as_uint8 [byteNo] >> bitNo);
        swap = bit ^ state.previousProcessedBit;
        state.previousProcessedBit = bit;
        curve25519_cswap(&state, swap);
        curve25519_ladderstep(&state);
        state.nextScalarBitToProcess --;
    }

    curve25519_cswap(&state,state.previousProcessedBit);
    fe25519_invert_useProvidedScratchBuffers (&state.zp, &state.zp, &state.xq, &state.zq, &state.x0);
    fe25519_mul(&state.xp, &state.xp, &state.zp);
    fe25519_reduceCompletely(&state.xp);

    fe25519_pack (r, &state.xp);


    return 0;
}
