
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int poly1305_state_internal_t ;
typedef int crypto_onetimeauth_poly1305_state ;


 int poly1305_update (int *,unsigned char const*,unsigned long long) ;

__attribute__((used)) static int
crypto_onetimeauth_poly1305_donna_update(
    crypto_onetimeauth_poly1305_state *state, const unsigned char *in,
    unsigned long long inlen)
{
    poly1305_update((poly1305_state_internal_t *) (void *) state, in, inlen);

    return 0;
}
