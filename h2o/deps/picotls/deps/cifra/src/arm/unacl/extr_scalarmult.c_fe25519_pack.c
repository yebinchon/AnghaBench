
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {unsigned char* as_uint8; } ;
typedef TYPE_1__ fe25519 ;


 int fe25519_reduceCompletely (TYPE_1__ volatile*) ;

__attribute__((used)) static void
fe25519_pack(
    unsigned char out[32],
    volatile fe25519* in
)
{
    uint8 ctr;

    fe25519_reduceCompletely(in);

    for (ctr = 0; ctr < 32; ctr++)
    {
        out[ctr] = in->as_uint8[ctr];
    }
}
