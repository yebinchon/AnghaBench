
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ ptls_key_exchange_algorithm_t ;
typedef int ptls_iovec_t ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int PTLS_ERROR_LIBRARY ;
 int PTLS_ERROR_NO_MEMORY ;
 int x9_62_key_exchange (int *,int *,int *,int ,int *) ;

__attribute__((used)) static int secp_key_exchange(ptls_key_exchange_algorithm_t *algo, ptls_iovec_t *pubkey, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    EC_GROUP *group = ((void*)0);
    BN_CTX *bn_ctx = ((void*)0);
    int ret;

    if ((group = EC_GROUP_new_by_curve_name((int)algo->data)) == ((void*)0)) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if ((bn_ctx = BN_CTX_new()) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    ret = x9_62_key_exchange(group, pubkey, secret, peerkey, bn_ctx);

Exit:
    if (bn_ctx != ((void*)0))
        BN_CTX_free(bn_ctx);
    if (group != ((void*)0))
        EC_GROUP_free(group);
    return ret;
}
