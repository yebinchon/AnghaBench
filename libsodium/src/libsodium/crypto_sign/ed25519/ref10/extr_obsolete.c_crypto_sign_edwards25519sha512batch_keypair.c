
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int crypto_hash_sha512 (unsigned char*,unsigned char*,int) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char*) ;
 int randombytes_buf (unsigned char*,int) ;

int
crypto_sign_edwards25519sha512batch_keypair(unsigned char *pk,
                                            unsigned char *sk)
{
    ge25519_p3 A;

    randombytes_buf(sk, 32);
    crypto_hash_sha512(sk, sk, 32);
    sk[0] &= 248;
    sk[31] &= 127;
    sk[31] |= 64;
    ge25519_scalarmult_base(&A, sk);
    ge25519_p3_tobytes(pk, &A);

    return 0;
}
