
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_sign_state ;


 int crypto_sign_ed25519ph_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_sign_update(crypto_sign_state *state, const unsigned char *m,
                   unsigned long long mlen)
{
    return crypto_sign_ed25519ph_update(state, m, mlen);
}
