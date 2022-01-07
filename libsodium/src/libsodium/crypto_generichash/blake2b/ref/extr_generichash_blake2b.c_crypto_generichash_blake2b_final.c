
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int crypto_generichash_blake2b_state ;
typedef int blake2b_state ;


 size_t const UINT8_MAX ;
 int assert (int) ;
 int blake2b_final (int *,int *,int ) ;

int
crypto_generichash_blake2b_final(crypto_generichash_blake2b_state *state,
                                 unsigned char *out, const size_t outlen)
{
    assert(outlen <= UINT8_MAX);
    return blake2b_final((blake2b_state *) (void *) state,
                         (uint8_t *) out, (uint8_t) outlen);
}
