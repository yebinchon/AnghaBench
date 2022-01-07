
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef int uint32 ;
struct TYPE_3__ {int* as_uint32; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_reduceCompletely(
    volatile fe25519* inout
)
{
    uint32 numberOfTimesToSubstractPrime;
    uint32 initialGuessForNumberOfTimesToSubstractPrime = inout->as_uint32[7] >>
                                                          31;
    uint64 accu;
    uint8 ctr;
    accu = initialGuessForNumberOfTimesToSubstractPrime * 19 + 19;

    for (ctr = 0; ctr < 7; ctr++)
    {
        accu += inout->as_uint32[ctr];
        accu >>= 32;
    }
    accu += inout->as_uint32[7];

    numberOfTimesToSubstractPrime = (uint32)(accu >> 31);


    accu = numberOfTimesToSubstractPrime * 19;

    for (ctr = 0; ctr < 7; ctr++)
    {
        accu += inout->as_uint32[ctr];
        inout->as_uint32[ctr] = (uint32)accu;
        accu >>= 32;
    }
    accu += inout->as_uint32[7];
    inout->as_uint32[7] = accu & 0x7ffffffful;
}
