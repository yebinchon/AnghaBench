
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;
typedef int crypto_hash_sha512_state ;


 int _crypto_sign_ed25519_clamp (unsigned char*) ;
 int _crypto_sign_ed25519_ref10_hinit (int *,int) ;
 int _crypto_sign_ed25519_synthetic_r_hv (int *,unsigned char*,unsigned char*) ;
 int crypto_hash_sha512 (unsigned char*,unsigned char const*,int) ;
 int crypto_hash_sha512_final (int *,unsigned char*) ;
 int crypto_hash_sha512_update (int *,unsigned char const*,unsigned long long) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char*) ;
 int memmove (unsigned char*,unsigned char const*,int) ;
 int sc25519_muladd (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ;
 int sc25519_reduce (unsigned char*) ;
 int sodium_memzero (unsigned char*,int) ;

int
_crypto_sign_ed25519_detached(unsigned char *sig, unsigned long long *siglen_p,
                              const unsigned char *m, unsigned long long mlen,
                              const unsigned char *sk, int prehashed)
{
    crypto_hash_sha512_state hs;
    unsigned char az[64];
    unsigned char nonce[64];
    unsigned char hram[64];
    ge25519_p3 R;

    _crypto_sign_ed25519_ref10_hinit(&hs, prehashed);

    crypto_hash_sha512(az, sk, 32);



    crypto_hash_sha512_update(&hs, az + 32, 32);


    crypto_hash_sha512_update(&hs, m, mlen);
    crypto_hash_sha512_final(&hs, nonce);

    memmove(sig + 32, sk + 32, 32);

    sc25519_reduce(nonce);
    ge25519_scalarmult_base(&R, nonce);
    ge25519_p3_tobytes(sig, &R);

    _crypto_sign_ed25519_ref10_hinit(&hs, prehashed);
    crypto_hash_sha512_update(&hs, sig, 64);
    crypto_hash_sha512_update(&hs, m, mlen);
    crypto_hash_sha512_final(&hs, hram);

    sc25519_reduce(hram);
    _crypto_sign_ed25519_clamp(az);
    sc25519_muladd(sig + 32, hram, az, nonce);

    sodium_memzero(az, sizeof az);
    sodium_memzero(nonce, sizeof nonce);

    if (siglen_p != ((void*)0)) {
        *siglen_p = 64U;
    }
    return 0;
}
