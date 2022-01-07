
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_12__ {scalar_t__ state; TYPE_1__* ctx; } ;
struct TYPE_13__ {TYPE_2__ super; } ;
typedef TYPE_3__ quicly_conn_t ;
struct TYPE_14__ {int len; scalar_t__ base; } ;
typedef TYPE_4__ ptls_iovec_t ;
struct TYPE_15__ {int (* cb ) (TYPE_5__*,TYPE_3__*,int,int ,char const*,int ) ;} ;
struct TYPE_11__ {TYPE_5__* closed_by_peer; } ;


 int QUICLY_ERROR_RECEIVED_STATELESS_RESET ;
 scalar_t__ QUICLY_STATE_CLOSING ;
 int destroy_all_streams (TYPE_3__*,int,int ) ;
 int enter_close (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_5__*,TYPE_3__*,int,int ,char const*,int ) ;

__attribute__((used)) static int handle_close(quicly_conn_t *conn, int err, uint64_t frame_type, ptls_iovec_t reason_phrase)
{
    int ret;

    if (conn->super.state >= QUICLY_STATE_CLOSING)
        return 0;


    if ((ret = enter_close(conn, 0, err != QUICLY_ERROR_RECEIVED_STATELESS_RESET)) != 0)
        return ret;
    if (conn->super.ctx->closed_by_peer != ((void*)0))
        conn->super.ctx->closed_by_peer->cb(conn->super.ctx->closed_by_peer, conn, err, frame_type,
                                            (const char *)reason_phrase.base, reason_phrase.len);
    destroy_all_streams(conn, err, 0);

    return 0;
}
