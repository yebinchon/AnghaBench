
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int ge25519_scalarmult (int *,unsigned char*,int *) ;
 scalar_t__ ristretto255_frombytes (int *,unsigned char const*) ;
 int ristretto255_p3_tobytes (unsigned char*,int *) ;
 scalar_t__ sodium_is_zero (unsigned char*,int) ;

int
crypto_scalarmult_ristretto255(unsigned char *q, const unsigned char *n,
                               const unsigned char *p)
{
    unsigned char *t = q;
    ge25519_p3 Q;
    ge25519_p3 P;
    unsigned int i;

    if (ristretto255_frombytes(&P, p) != 0) {
        return -1;
    }
    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    t[31] &= 127;
    ge25519_scalarmult(&Q, t, &P);
    ristretto255_p3_tobytes(q, &Q);
    if (sodium_is_zero(q, 32)) {
        return -1;
    }
    return 0;
}
