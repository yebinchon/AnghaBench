
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hs; } ;
typedef TYPE_1__ crypto_sign_ed25519ph_state ;


 int crypto_hash_sha512_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_sign_ed25519ph_update(crypto_sign_ed25519ph_state *state,
                             const unsigned char *m, unsigned long long mlen)
{
    return crypto_hash_sha512_update(&state->hs, m, mlen);
}
