
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptls_key_exchange_algorithm_t ;
struct TYPE_7__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int priv ;


 int PTLS_ALERT_DECRYPT_ERROR ;
 int PTLS_ERROR_NO_MEMORY ;
 int X25519_KEY_SIZE ;
 int * malloc (int) ;
 int ptls_clear_memory (int *,int) ;
 TYPE_1__ ptls_iovec_init (int *,int) ;
 int x25519_create_keypair (int *,int *) ;
 int x25519_derive_secret (TYPE_1__*,int *,int ,int *,int *) ;

__attribute__((used)) static int x25519_key_exchange(ptls_key_exchange_algorithm_t *algo, ptls_iovec_t *pubkey, ptls_iovec_t *secret,
                               ptls_iovec_t peerkey)
{
    uint8_t priv[X25519_KEY_SIZE], *pub = ((void*)0);
    int ret;

    if (peerkey.len != X25519_KEY_SIZE) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    if ((pub = malloc(X25519_KEY_SIZE)) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    x25519_create_keypair(priv, pub);
    if ((ret = x25519_derive_secret(secret, ((void*)0), peerkey.base, priv, pub)) != 0)
        goto Exit;

    *pubkey = ptls_iovec_init(pub, X25519_KEY_SIZE);
    ret = 0;

Exit:
    ptls_clear_memory(priv, sizeof(priv));
    if (pub != ((void*)0) && ret != 0)
        ptls_clear_memory(pub, X25519_KEY_SIZE);
    return ret;
}
