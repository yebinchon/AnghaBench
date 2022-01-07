
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int crypto_scalarmult_curve25519 (unsigned char*,unsigned char const*,int const*) ;

int
crypto_scalarmult_curve25519_base(
    unsigned char* q,
    const unsigned char* n
)
{
    static const uint8 base[32] =
    {
        9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    };

    return crypto_scalarmult_curve25519(q, n, base);
}
