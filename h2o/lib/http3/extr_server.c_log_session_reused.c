
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_1__ h3; } ;
typedef int ptls_t ;
struct TYPE_5__ {scalar_t__ conn; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_iovec_init (int ) ;
 scalar_t__ ptls_is_psk_handshake (int *) ;
 int * quicly_get_tls (int ) ;

__attribute__((used)) static h2o_iovec_t log_session_reused(h2o_req_t *req)
{
    struct st_h2o_http3_server_conn_t *conn = (struct st_h2o_http3_server_conn_t *)req->conn;
    ptls_t *tls = quicly_get_tls(conn->h3.quic);
    return ptls_is_psk_handshake(tls) ? h2o_iovec_init(H2O_STRLIT("1")) : h2o_iovec_init(H2O_STRLIT("0"));
}
