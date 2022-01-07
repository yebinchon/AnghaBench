
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;
typedef int ge25519_p1p1 ;
typedef int ge25519_cached ;


 int ge25519_p1p1_to_p3 (int *,int *) ;
 int ge25519_p3_to_cached (int *,int *) ;
 int ge25519_sub (int *,int *,int *) ;
 scalar_t__ ristretto255_frombytes (int *,unsigned char const*) ;
 int ristretto255_p3_tobytes (unsigned char*,int *) ;

int
crypto_core_ristretto255_sub(unsigned char *r,
                             const unsigned char *p, const unsigned char *q)
{
    ge25519_p3 p_p3, q_p3, r_p3;
    ge25519_p1p1 r_p1p1;
    ge25519_cached q_cached;

    if (ristretto255_frombytes(&p_p3, p) != 0 ||
        ristretto255_frombytes(&q_p3, q) != 0) {
        return -1;
    }
    ge25519_p3_to_cached(&q_cached, &q_p3);
    ge25519_sub(&r_p1p1, &p_p3, &q_cached);
    ge25519_p1p1_to_p3(&r_p3, &r_p1p1);
    ristretto255_p3_tobytes(r, &r_p3);

    return 0;
}
