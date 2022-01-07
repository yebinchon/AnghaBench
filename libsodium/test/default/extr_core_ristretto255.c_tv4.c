
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int crypto_core_ristretto255_NONREDUCEDSCALARBYTES ;
 int crypto_core_ristretto255_SCALARBYTES ;
 int crypto_core_ristretto255_scalar_add (unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_complement (unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_invert (unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_mul (unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_negate (unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_random (unsigned char*) ;
 int crypto_core_ristretto255_scalar_reduce (unsigned char*,unsigned char*) ;
 int crypto_core_ristretto255_scalar_sub (unsigned char*,unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int randombytes_buf (unsigned char*,int ) ;
 int sodium_free (unsigned char*) ;
 int sodium_is_zero (unsigned char*,int ) ;
 scalar_t__ sodium_malloc (int ) ;

__attribute__((used)) static void
tv4(void)
{
    unsigned char *r;
    unsigned char *s1;
    unsigned char *s2;
    unsigned char *s3;
    unsigned char *s4;

    r = (unsigned char *) sodium_malloc(crypto_core_ristretto255_NONREDUCEDSCALARBYTES);
    s1 = (unsigned char *) sodium_malloc(crypto_core_ristretto255_SCALARBYTES);
    s2 = (unsigned char *) sodium_malloc(crypto_core_ristretto255_SCALARBYTES);
    s3 = (unsigned char *) sodium_malloc(crypto_core_ristretto255_SCALARBYTES);
    s4 = (unsigned char *) sodium_malloc(crypto_core_ristretto255_SCALARBYTES);

    crypto_core_ristretto255_scalar_random(s1);
    randombytes_buf(r, crypto_core_ristretto255_NONREDUCEDSCALARBYTES);
    crypto_core_ristretto255_scalar_reduce(s2, r);
    memcpy(s4, s1, crypto_core_ristretto255_SCALARBYTES);
    crypto_core_ristretto255_scalar_add(s3, s1, s2);
    crypto_core_ristretto255_scalar_sub(s4, s1, s2);
    crypto_core_ristretto255_scalar_add(s2, s3, s4);
    crypto_core_ristretto255_scalar_sub(s2, s2, s1);
    crypto_core_ristretto255_scalar_mul(s2, s3, s2);
    crypto_core_ristretto255_scalar_invert(s4, s3);
    crypto_core_ristretto255_scalar_mul(s2, s2, s4);
    crypto_core_ristretto255_scalar_negate(s1, s1);
    crypto_core_ristretto255_scalar_add(s2, s2, s1);
    crypto_core_ristretto255_scalar_complement(s1, s2);
    s1[0]--;
    assert(sodium_is_zero(s1, crypto_core_ristretto255_SCALARBYTES));

    sodium_free(s1);
    sodium_free(s2);
    sodium_free(s3);
    sodium_free(s4);
    sodium_free(r);
}
