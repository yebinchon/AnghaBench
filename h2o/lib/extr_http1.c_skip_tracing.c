
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1_conn_t {int sock; } ;
typedef int h2o_conn_t ;


 int h2o_socket_skip_tracing (int ) ;

__attribute__((used)) static int skip_tracing(h2o_conn_t *_conn)
{
    struct st_h2o_http1_conn_t *conn = (void *)_conn;
    return h2o_socket_skip_tracing(conn->sock);
}
