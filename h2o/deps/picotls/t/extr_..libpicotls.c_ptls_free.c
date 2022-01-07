
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_24__ {int verify_ctx; int (* cb ) (int ,int ,int ) ;} ;
struct TYPE_21__ {TYPE_9__* base; } ;
struct TYPE_22__ {TYPE_5__ context; } ;
struct TYPE_23__ {TYPE_6__ certificate_request; TYPE_10__* key_share_ctx; } ;
struct TYPE_19__ {int * aead; } ;
struct TYPE_18__ {int * aead; } ;
struct TYPE_20__ {TYPE_3__ enc; TYPE_2__ dec; } ;
struct TYPE_17__ {int mess; int rec; } ;
struct TYPE_25__ {int ctx; struct TYPE_25__* pending_handshake_secret; TYPE_8__ certificate_verify; TYPE_7__ client; scalar_t__ is_server; struct TYPE_25__* negotiated_protocol; struct TYPE_25__* server_name; TYPE_4__ traffic_protection; int * key_schedule; int * esni; TYPE_1__ recvbuf; } ;
typedef TYPE_9__ ptls_t ;
struct TYPE_16__ {int (* on_exchange ) (TYPE_10__**,int,int *,int ) ;} ;


 int FREE ;
 int PTLS_MAX_DIGEST_SIZE ;
 int PTLS_PROBE0 (int ,TYPE_9__*) ;
 int free (TYPE_9__*) ;
 int free_esni_secret (int **,scalar_t__) ;
 int free_exporter_master_secret (TYPE_9__*,int) ;
 int key_schedule_free (int *) ;
 int ptls_aead_free (int *) ;
 int ptls_buffer_dispose (int *) ;
 int ptls_clear_memory (TYPE_9__*,int) ;
 int ptls_iovec_init (int *,int ) ;
 int stub1 (TYPE_10__**,int,int *,int ) ;
 int stub2 (int ,int ,int ) ;
 int update_open_count (int ,int) ;

void ptls_free(ptls_t *tls)
{
    PTLS_PROBE0(FREE, tls);
    ptls_buffer_dispose(&tls->recvbuf.rec);
    ptls_buffer_dispose(&tls->recvbuf.mess);
    free_exporter_master_secret(tls, 1);
    free_exporter_master_secret(tls, 0);
    if (tls->esni != ((void*)0))
        free_esni_secret(&tls->esni, tls->is_server);
    if (tls->key_schedule != ((void*)0))
        key_schedule_free(tls->key_schedule);
    if (tls->traffic_protection.dec.aead != ((void*)0))
        ptls_aead_free(tls->traffic_protection.dec.aead);
    if (tls->traffic_protection.enc.aead != ((void*)0))
        ptls_aead_free(tls->traffic_protection.enc.aead);
    free(tls->server_name);
    free(tls->negotiated_protocol);
    if (tls->is_server) {

    } else {
        if (tls->client.key_share_ctx != ((void*)0))
            tls->client.key_share_ctx->on_exchange(&tls->client.key_share_ctx, 1, ((void*)0), ptls_iovec_init(((void*)0), 0));
        if (tls->client.certificate_request.context.base != ((void*)0))
            free(tls->client.certificate_request.context.base);
    }
    if (tls->certificate_verify.cb != ((void*)0)) {
        tls->certificate_verify.cb(tls->certificate_verify.verify_ctx, ptls_iovec_init(((void*)0), 0), ptls_iovec_init(((void*)0), 0));
    }
    if (tls->pending_handshake_secret != ((void*)0)) {
        ptls_clear_memory(tls->pending_handshake_secret, PTLS_MAX_DIGEST_SIZE);
        free(tls->pending_handshake_secret);
    }
    update_open_count(tls->ctx, -1);
    ptls_clear_memory(tls, sizeof(*tls));
    free(tls);
}
