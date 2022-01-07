
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_hash_sha256_state ;


 int crypto_hash_sha256_final (int *,unsigned char*) ;
 int crypto_hash_sha256_init (int *) ;
 int crypto_hash_sha256_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_hash_sha256(unsigned char *out, const unsigned char *in,
                   unsigned long long inlen)
{
    crypto_hash_sha256_state state;

    crypto_hash_sha256_init(&state);
    crypto_hash_sha256_update(&state, in, inlen);
    crypto_hash_sha256_final(&state, out);

    return 0;
}
