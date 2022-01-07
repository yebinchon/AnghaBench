
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ selected_group; int cookie; } ;
struct st_ptls_server_hello_t {TYPE_5__ retry_request; } ;
struct TYPE_15__ {scalar_t__ using_early_data; TYPE_9__* key_share_ctx; } ;
struct TYPE_13__ {int * aead; } ;
struct TYPE_14__ {TYPE_1__ enc; } ;
struct TYPE_18__ {int key_schedule; TYPE_7__* key_share; TYPE_4__* ctx; TYPE_3__ client; TYPE_2__ traffic_protection; } ;
typedef TYPE_6__ ptls_t ;
typedef int ptls_message_emitter_t ;
struct TYPE_19__ {scalar_t__ id; } ;
typedef TYPE_7__ ptls_key_exchange_algorithm_t ;
struct TYPE_20__ {int len; int base; } ;
typedef TYPE_8__ ptls_iovec_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_21__ {int (* on_exchange ) (TYPE_9__**,int,int *,int ) ;} ;
struct TYPE_16__ {TYPE_7__** key_exchanges; int * update_traffic_key; } ;


 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 scalar_t__ UINT16_MAX ;
 int assert (int ) ;
 int key_schedule_transform_post_ch1hash (int ) ;
 int ptls__key_schedule_update_hash (int ,int ,int ) ;
 int ptls_aead_free (int *) ;
 int ptls_iovec_init (int *,int ) ;
 int send_client_hello (TYPE_6__*,int *,int *,int *) ;
 int stub1 (TYPE_9__**,int,int *,int ) ;

__attribute__((used)) static int handle_hello_retry_request(ptls_t *tls, ptls_message_emitter_t *emitter, struct st_ptls_server_hello_t *sh,
                                      ptls_iovec_t message, ptls_handshake_properties_t *properties)
{
    int ret;

    if (tls->client.key_share_ctx != ((void*)0)) {
        tls->client.key_share_ctx->on_exchange(&tls->client.key_share_ctx, 1, ((void*)0), ptls_iovec_init(((void*)0), 0));
        tls->client.key_share_ctx = ((void*)0);
    }
    if (tls->client.using_early_data) {


        if (tls->ctx->update_traffic_key == ((void*)0)) {
            assert(tls->traffic_protection.enc.aead != ((void*)0));
            ptls_aead_free(tls->traffic_protection.enc.aead);
            tls->traffic_protection.enc.aead = ((void*)0);
        }
        tls->client.using_early_data = 0;
    }

    if (sh->retry_request.selected_group != UINT16_MAX) {

        ptls_key_exchange_algorithm_t **cand;
        for (cand = tls->ctx->key_exchanges; *cand != ((void*)0); ++cand)
            if ((*cand)->id == sh->retry_request.selected_group)
                break;
        if (*cand == ((void*)0)) {
            ret = PTLS_ALERT_ILLEGAL_PARAMETER;
            goto Exit;
        }
        tls->key_share = *cand;
    } else if (tls->key_share != ((void*)0)) {

    } else {
        ret = PTLS_ALERT_ILLEGAL_PARAMETER;
        goto Exit;
    }

    key_schedule_transform_post_ch1hash(tls->key_schedule);
    ptls__key_schedule_update_hash(tls->key_schedule, message.base, message.len);
    ret = send_client_hello(tls, emitter, properties, &sh->retry_request.cookie);

Exit:
    return ret;
}
