
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int khiter_t ;
struct TYPE_7__ {int * enc; int * dec; } ;
struct TYPE_8__ {int _timeout; int * quic; TYPE_5__* ctx; TYPE_1__ qpack; } ;
typedef TYPE_2__ h2o_http3_conn_t ;
struct TYPE_10__ {int conns_by_id; } ;
struct TYPE_9__ {int master_id; } ;


 int drop_from_acceptmap (TYPE_5__*,TYPE_2__*) ;
 int h2o_qpack_destroy_decoder (int *) ;
 int h2o_qpack_destroy_encoder (int *) ;
 int h2o_timer_unlink (int *) ;
 int kh_del_h2o_http3_idmap (int ,int ) ;
 int kh_end (int ) ;
 int kh_get_h2o_http3_idmap (int ,int ) ;
 int quicly_free (int *) ;
 TYPE_3__* quicly_get_master_id (int *) ;

void h2o_http3_dispose_conn(h2o_http3_conn_t *conn)
{
    if (conn->qpack.dec != ((void*)0))
        h2o_qpack_destroy_decoder(conn->qpack.dec);
    if (conn->qpack.enc != ((void*)0))
        h2o_qpack_destroy_encoder(conn->qpack.enc);
    if (conn->quic != ((void*)0)) {
        khiter_t iter;

        if ((iter = kh_get_h2o_http3_idmap(conn->ctx->conns_by_id, quicly_get_master_id(conn->quic)->master_id)) !=
            kh_end(conn->ctx->conns_by_id))
            kh_del_h2o_http3_idmap(conn->ctx->conns_by_id, iter);
        drop_from_acceptmap(conn->ctx, conn);
        quicly_free(conn->quic);
    }
    h2o_timer_unlink(&conn->_timeout);
}
