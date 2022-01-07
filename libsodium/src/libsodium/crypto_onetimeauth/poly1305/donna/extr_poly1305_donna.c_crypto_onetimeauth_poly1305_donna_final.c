
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int poly1305_state_internal_t ;
typedef int crypto_onetimeauth_poly1305_state ;


 int poly1305_finish (int *,unsigned char*) ;

__attribute__((used)) static int
crypto_onetimeauth_poly1305_donna_final(
    crypto_onetimeauth_poly1305_state *state, unsigned char *out)
{
    poly1305_finish((poly1305_state_internal_t *) (void *) state, out);

    return 0;
}
