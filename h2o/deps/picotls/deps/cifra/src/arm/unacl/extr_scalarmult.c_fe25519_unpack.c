
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {unsigned char* as_uint8; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_unpack(
    volatile fe25519* out,
    const unsigned char in[32]
)
{
    uint8 ctr;

    for (ctr = 0; ctr < 32; ctr++)
    {
        out->as_uint8[ctr] = in[ctr];
    }
    out->as_uint8[31] &= 0x7f;
}
