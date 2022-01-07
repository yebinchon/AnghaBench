
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pending_traffic_secret; } ;
struct TYPE_11__ {int secret; } ;
struct TYPE_12__ {TYPE_1__ dec; } ;
struct TYPE_14__ {int state; int key_schedule; TYPE_3__ server; TYPE_2__ traffic_protection; } ;
typedef TYPE_4__ ptls_t ;
struct TYPE_15__ {int len; int base; } ;
typedef TYPE_5__ ptls_iovec_t ;


 int PTLS_STATE_SERVER_POST_HANDSHAKE ;
 int memcpy (int ,int ,int) ;
 int ptls__key_schedule_update_hash (int ,int ,int ) ;
 int ptls_clear_memory (int ,int) ;
 int setup_traffic_protection (TYPE_4__*,int ,int *,int,int ) ;
 int verify_finished (TYPE_4__*,TYPE_5__) ;

__attribute__((used)) static int server_handle_finished(ptls_t *tls, ptls_iovec_t message)
{
    int ret;

    if ((ret = verify_finished(tls, message)) != 0)
        return ret;

    memcpy(tls->traffic_protection.dec.secret, tls->server.pending_traffic_secret, sizeof(tls->server.pending_traffic_secret));
    ptls_clear_memory(tls->server.pending_traffic_secret, sizeof(tls->server.pending_traffic_secret));
    if ((ret = setup_traffic_protection(tls, 0, ((void*)0), 3, 0)) != 0)
        return ret;

    ptls__key_schedule_update_hash(tls->key_schedule, message.base, message.len);

    tls->state = PTLS_STATE_SERVER_POST_HANDSHAKE;
    return 0;
}
