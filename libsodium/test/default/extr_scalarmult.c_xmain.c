
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicesk ;
 int assert (int) ;
 int bobsk ;
 int crypto_scalarmult (unsigned char*,int ,unsigned char*) ;
 int crypto_scalarmult_BYTES ;
 int crypto_scalarmult_base (unsigned char*,int ) ;
 unsigned int crypto_scalarmult_bytes () ;
 unsigned int crypto_scalarmult_curve25519_bytes () ;
 unsigned int crypto_scalarmult_curve25519_scalarbytes () ;
 int crypto_scalarmult_primitive () ;
 unsigned int crypto_scalarmult_scalarbytes () ;
 char* hex ;
 int printf (char*,char*) ;
 unsigned char* small_order_p ;
 int sodium_bin2hex (char*,int,unsigned char*,int ) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (int ) ;
 scalar_t__ strcmp (int ,char*) ;

int
main(void)
{
    unsigned char *alicepk =
        (unsigned char *) sodium_malloc(crypto_scalarmult_BYTES);
    unsigned char *bobpk =
        (unsigned char *) sodium_malloc(crypto_scalarmult_BYTES);
    unsigned char *k = (unsigned char *) sodium_malloc(crypto_scalarmult_BYTES);
    int ret;

    assert(alicepk != ((void*)0) && bobpk != ((void*)0) && k != ((void*)0));

    crypto_scalarmult_base(alicepk, alicesk);
    sodium_bin2hex(hex, sizeof hex, alicepk, crypto_scalarmult_BYTES);
    printf("%s\n", hex);

    crypto_scalarmult_base(bobpk, bobsk);
    sodium_bin2hex(hex, sizeof hex, bobpk, crypto_scalarmult_BYTES);
    printf("%s\n", hex);

    ret = crypto_scalarmult(k, alicesk, bobpk);
    assert(ret == 0);
    sodium_bin2hex(hex, sizeof hex, k, crypto_scalarmult_BYTES);
    printf("%s\n", hex);

    ret = crypto_scalarmult(k, bobsk, alicepk);
    assert(ret == 0);
    sodium_bin2hex(hex, sizeof hex, k, crypto_scalarmult_BYTES);
    printf("%s\n", hex);

    ret = crypto_scalarmult(k, bobsk, small_order_p);
    assert(ret == -1);

    sodium_free(bobpk);
    sodium_free(alicepk);
    sodium_free(k);

    assert(crypto_scalarmult_bytes() > 0U);
    assert(crypto_scalarmult_scalarbytes() > 0U);
    assert(strcmp(crypto_scalarmult_primitive(), "curve25519") == 0);
    assert(crypto_scalarmult_bytes() == crypto_scalarmult_curve25519_bytes());
    assert(crypto_scalarmult_scalarbytes() ==
           crypto_scalarmult_curve25519_scalarbytes());
    assert(crypto_scalarmult_bytes() == crypto_scalarmult_scalarbytes());

    return 0;
}
