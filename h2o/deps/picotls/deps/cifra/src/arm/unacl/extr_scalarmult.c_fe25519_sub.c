
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
typedef int int64 ;
typedef int int32 ;
struct TYPE_5__ {int* as_uint32; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_sub(
    fe25519* out,
    const fe25519* baseValue,
    const fe25519* valueToSubstract
)
{
    uint16 ctr;
    int64 accu = 0;



    accu = baseValue->as_uint32[7];
    accu -= valueToSubstract->as_uint32[7];



    out->as_uint32[7] = ((uint32)accu) | 0x80000000ul;

    accu = 19 * ((int32)(accu >> 31) - 1);



    for (ctr = 0; ctr < 7; ctr += 1)
    {
        accu += baseValue->as_uint32[ctr];
        accu -= valueToSubstract->as_uint32[ctr];

        out->as_uint32[ctr] = (uint32)accu;
        accu >>= 32;
    }
    accu += out->as_uint32[7];
    out->as_uint32[7] = (uint32)accu;
}
