
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;
typedef int crypto_hash_sha512_state ;


 int crypto_hash_sha512_final (int *,unsigned char*) ;
 int crypto_hash_sha512_init (int *) ;
 int crypto_hash_sha512_update (int *,unsigned char const*,unsigned long long) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char const*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char const*,size_t) ;
 int sc25519_muladd (unsigned char*,unsigned char*,unsigned char*,unsigned char const*) ;
 int sc25519_reduce (unsigned char*) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_sign_edwards25519sha512batch(unsigned char *sm,
                                    unsigned long long *smlen_p,
                                    const unsigned char *m,
                                    unsigned long long mlen,
                                    const unsigned char *sk)
{
    crypto_hash_sha512_state hs;
    unsigned char nonce[64];
    unsigned char hram[64];
    unsigned char sig[64];
    ge25519_p3 A;
    ge25519_p3 R;

    crypto_hash_sha512_init(&hs);
    crypto_hash_sha512_update(&hs, sk + 32, 32);
    crypto_hash_sha512_update(&hs, m, mlen);
    crypto_hash_sha512_final(&hs, nonce);
    ge25519_scalarmult_base(&A, sk);
    ge25519_p3_tobytes(sig + 32, &A);
    sc25519_reduce(nonce);
    ge25519_scalarmult_base(&R, nonce);
    ge25519_p3_tobytes(sig, &R);
    crypto_hash_sha512_init(&hs);
    crypto_hash_sha512_update(&hs, sig, 32);
    crypto_hash_sha512_update(&hs, m, mlen);
    crypto_hash_sha512_final(&hs, hram);
    sc25519_reduce(hram);
    sc25519_muladd(sig + 32, hram, nonce, sk);
    sodium_memzero(hram, sizeof hram);
    memmove(sm + 32, m, (size_t) mlen);
    memcpy(sm, sig, 32);
    memcpy(sm + 32 + mlen, sig + 32, 32);
    *smlen_p = mlen + 64U;

    return 0;
}
