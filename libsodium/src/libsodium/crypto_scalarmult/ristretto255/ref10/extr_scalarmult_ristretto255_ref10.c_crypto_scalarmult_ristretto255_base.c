
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int ge25519_scalarmult_base (int *,unsigned char*) ;
 int ristretto255_p3_tobytes (unsigned char*,int *) ;
 scalar_t__ sodium_is_zero (unsigned char*,int) ;

int
crypto_scalarmult_ristretto255_base(unsigned char *q,
                                    const unsigned char *n)
{
    unsigned char *t = q;
    ge25519_p3 Q;
    unsigned int i;

    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    t[31] &= 127;
    ge25519_scalarmult_base(&Q, t);
    ristretto255_p3_tobytes(q, &Q);
    if (sodium_is_zero(q, 32)) {
        return -1;
    }
    return 0;
}
