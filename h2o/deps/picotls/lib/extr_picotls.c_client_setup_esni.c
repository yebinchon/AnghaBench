
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;
struct TYPE_19__ {int pubkey; TYPE_5__* key_share; int record_digest; TYPE_9__* cipher; int padded_length; } ;
struct TYPE_21__ {TYPE_1__ client; int esni_contents_hash; int secret; int nonce; int version; } ;
typedef TYPE_3__ ptls_esni_secret_t ;
struct TYPE_22__ {int (* random_bytes ) (int ,int) ;} ;
typedef TYPE_4__ ptls_context_t ;
struct TYPE_24__ {int hash; } ;
struct TYPE_23__ {int (* exchange ) (TYPE_5__*,int *,int *,TYPE_2__) ;int id; } ;


 int PTLS_ERROR_NO_MEMORY ;
 int build_esni_contents_hash (int ,int ,int ,int ,int ,int const*) ;
 int free (TYPE_3__*) ;
 int free_esni_secret (TYPE_3__**,int ) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ parse_esni_keys (TYPE_4__*,int *,TYPE_5__**,TYPE_9__**,TYPE_2__*,int *,char**,TYPE_2__) ;
 int ptls_calc_hash (int ,int ,int ,int ) ;
 int stub1 (int ,int) ;
 int stub2 (TYPE_5__*,int *,int *,TYPE_2__) ;

__attribute__((used)) static int client_setup_esni(ptls_context_t *ctx, ptls_esni_secret_t **esni, ptls_iovec_t esni_keys, char **published_sni,
                             const uint8_t *client_random)
{
    ptls_iovec_t peer_key;
    int ret;

    if ((*esni = malloc(sizeof(**esni))) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    memset(*esni, 0, sizeof(**esni));


    if (parse_esni_keys(ctx, &(*esni)->version, &(*esni)->client.key_share, &(*esni)->client.cipher, &peer_key,
                        &(*esni)->client.padded_length, published_sni, esni_keys) != 0) {
        free(*esni);
        *esni = ((void*)0);
        return 0;
    }

    ctx->random_bytes((*esni)->nonce, sizeof((*esni)->nonce));


    if ((ret = ptls_calc_hash((*esni)->client.cipher->hash, (*esni)->client.record_digest, esni_keys.base, esni_keys.len)) != 0)
        goto Exit;

    if ((ret = (*esni)->client.key_share->exchange((*esni)->client.key_share, &(*esni)->client.pubkey, &(*esni)->secret,
                                                   peer_key)) != 0)
        goto Exit;

    if ((ret = build_esni_contents_hash((*esni)->client.cipher->hash, (*esni)->esni_contents_hash, (*esni)->client.record_digest,
                                        (*esni)->client.key_share->id, (*esni)->client.pubkey, client_random)) != 0)
        goto Exit;

    ret = 0;
Exit:
    if (ret != 0)
        free_esni_secret(esni, 0);
    return ret;
}
