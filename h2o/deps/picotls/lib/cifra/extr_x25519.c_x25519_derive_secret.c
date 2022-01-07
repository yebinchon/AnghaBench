
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int len; int * base; } ;
typedef TYPE_1__ ptls_iovec_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int X25519_KEY_SIZE ;
 int cf_curve25519_mul (int *,int const*,int const*) ;
 int * malloc (int ) ;

__attribute__((used)) static int x25519_derive_secret(ptls_iovec_t *secret, const uint8_t *clientpriv, const uint8_t *clientpub,
                                const uint8_t *serverpriv, const uint8_t *serverpub)
{
    if ((secret->base = malloc(X25519_KEY_SIZE)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;

    cf_curve25519_mul(secret->base, clientpriv != ((void*)0) ? clientpriv : serverpriv, clientpriv != ((void*)0) ? serverpub : clientpub);
    secret->len = X25519_KEY_SIZE;
    return 0;
}
