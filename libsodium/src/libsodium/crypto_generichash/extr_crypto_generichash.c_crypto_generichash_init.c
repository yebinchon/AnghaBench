
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_generichash_state ;
typedef int crypto_generichash_blake2b_state ;


 int crypto_generichash_blake2b_init (int *,unsigned char const*,size_t const,size_t const) ;

int
crypto_generichash_init(crypto_generichash_state *state,
                        const unsigned char *key,
                        const size_t keylen, const size_t outlen)
{
    return crypto_generichash_blake2b_init
        ((crypto_generichash_blake2b_state *) state, key, keylen, outlen);
}
