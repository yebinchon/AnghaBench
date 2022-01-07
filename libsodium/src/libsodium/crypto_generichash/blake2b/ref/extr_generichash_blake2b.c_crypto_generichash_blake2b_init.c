
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int crypto_generichash_blake2b_state ;
typedef int blake2b_state ;


 size_t const BLAKE2B_KEYBYTES ;
 size_t const BLAKE2B_OUTBYTES ;
 int COMPILER_ASSERT (int) ;
 size_t const UINT8_MAX ;
 int assert (int) ;
 scalar_t__ blake2b_init (int *,int ) ;
 scalar_t__ blake2b_init_key (int *,int ,unsigned char const*,int ) ;

int
crypto_generichash_blake2b_init(crypto_generichash_blake2b_state *state,
                                const unsigned char *key, const size_t keylen,
                                const size_t outlen)
{
    if (outlen <= 0U || outlen > BLAKE2B_OUTBYTES ||
        keylen > BLAKE2B_KEYBYTES) {
        return -1;
    }
    assert(outlen <= UINT8_MAX);
    assert(keylen <= UINT8_MAX);
    COMPILER_ASSERT(sizeof(blake2b_state) <= sizeof *state);
    if (key == ((void*)0) || keylen <= 0U) {
        if (blake2b_init((blake2b_state *) (void *) state, (uint8_t) outlen) != 0) {
            return -1;
        }
    } else if (blake2b_init_key((blake2b_state *) (void *) state, (uint8_t) outlen, key,
                                (uint8_t) keylen) != 0) {
        return -1;
    }
    return 0;
}
