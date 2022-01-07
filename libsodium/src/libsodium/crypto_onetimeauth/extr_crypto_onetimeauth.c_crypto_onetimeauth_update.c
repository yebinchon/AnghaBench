
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_onetimeauth_state ;
typedef int crypto_onetimeauth_poly1305_state ;


 int crypto_onetimeauth_poly1305_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_onetimeauth_update(crypto_onetimeauth_state *state,
                          const unsigned char *in,
                          unsigned long long inlen)
{
    return crypto_onetimeauth_poly1305_update
        ((crypto_onetimeauth_poly1305_state *) state, in, inlen);
}
