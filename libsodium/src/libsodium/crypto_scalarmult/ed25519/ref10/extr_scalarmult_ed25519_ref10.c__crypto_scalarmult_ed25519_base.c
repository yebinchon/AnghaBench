
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int _crypto_scalarmult_ed25519_clamp (unsigned char*) ;
 scalar_t__ _crypto_scalarmult_ed25519_is_inf (unsigned char*) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char*) ;
 scalar_t__ sodium_is_zero (unsigned char const*,int) ;

__attribute__((used)) static int
_crypto_scalarmult_ed25519_base(unsigned char *q,
                                const unsigned char *n, const int clamp)
{
    unsigned char *t = q;
    ge25519_p3 Q;
    unsigned int i;

    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    if (clamp != 0) {
        _crypto_scalarmult_ed25519_clamp(t);
    }
    t[31] &= 127;

    ge25519_scalarmult_base(&Q, t);
    ge25519_p3_tobytes(q, &Q);
    if (_crypto_scalarmult_ed25519_is_inf(q) != 0 || sodium_is_zero(n, 32)) {
        return -1;
    }
    return 0;
}
