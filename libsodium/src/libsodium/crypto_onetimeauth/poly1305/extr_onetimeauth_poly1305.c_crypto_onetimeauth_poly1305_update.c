
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int crypto_onetimeauth_poly1305_state ;
struct TYPE_2__ {int (* onetimeauth_update ) (int *,unsigned char const*,unsigned long long) ;} ;


 TYPE_1__* implementation ;
 int stub1 (int *,unsigned char const*,unsigned long long) ;

int
crypto_onetimeauth_poly1305_update(crypto_onetimeauth_poly1305_state *state,
                                   const unsigned char *in,
                                   unsigned long long inlen)
{
    return implementation->onetimeauth_update(state, in, inlen);
}
