
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_generichash_state ;
typedef int crypto_generichash_blake2b_state ;


 int crypto_generichash_blake2b_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_generichash_update(crypto_generichash_state *state,
                          const unsigned char *in,
                          unsigned long long inlen)
{
    return crypto_generichash_blake2b_update
        ((crypto_generichash_blake2b_state *) state, in, inlen);
}
