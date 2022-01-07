
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int* as_uint32; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_add(
    fe25519* out,
    const fe25519* baseValue,
    const fe25519* valueToAdd
)
{
    uint16 ctr = 0;
    uint64 accu = 0;



    accu = baseValue->as_uint32[7];
    accu += valueToAdd->as_uint32[7];
    out->as_uint32[7] = ((uint32)accu) & 0x7ffffffful;

    accu = ((uint32)(accu >> 31)) * 19;

    for (ctr = 0; ctr < 7; ctr += 1)
    {
        accu += baseValue->as_uint32[ctr];
        accu += valueToAdd->as_uint32[ctr];

        out->as_uint32[ctr] = (uint32)accu;
        accu >>= 32;
    }
    accu += out->as_uint32[7];
    out->as_uint32[7] = (uint32)accu;
}
