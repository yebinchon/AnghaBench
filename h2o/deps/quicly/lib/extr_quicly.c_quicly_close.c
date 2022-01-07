
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
struct TYPE_6__ {TYPE_1__ super; } ;
typedef TYPE_2__ quicly_conn_t ;


 scalar_t__ QUICLY_ERROR_IS_QUIC_APPLICATION (int) ;
 int QUICLY_FRAME_TYPE_PADDING ;
 int assert (int) ;
 int initiate_close (TYPE_2__*,int,int ,char const*) ;
 int update_now (int ) ;

int quicly_close(quicly_conn_t *conn, int err, const char *reason_phrase)
{
    assert(err == 0 || QUICLY_ERROR_IS_QUIC_APPLICATION(err));
    update_now(conn->super.ctx);

    return initiate_close(conn, err, QUICLY_FRAME_TYPE_PADDING , reason_phrase);
}
