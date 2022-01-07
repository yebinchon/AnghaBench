
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_onetimeauth_state ;
typedef int crypto_onetimeauth_poly1305_state ;


 int crypto_onetimeauth_poly1305_init (int *,unsigned char const*) ;

int
crypto_onetimeauth_init(crypto_onetimeauth_state *state,
                        const unsigned char *key)
{
    return crypto_onetimeauth_poly1305_init
        ((crypto_onetimeauth_poly1305_state *) state, key);
}
