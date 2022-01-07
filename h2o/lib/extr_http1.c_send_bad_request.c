
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1_conn_t {int req; int sock; } ;


 int H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION ;
 int h2o_send_error_400 (int *,char*,char const*,int ) ;
 int h2o_socket_read_stop (int ) ;

__attribute__((used)) static void send_bad_request(struct st_h2o_http1_conn_t *conn, const char *body)
{
    h2o_socket_read_stop(conn->sock);
    h2o_send_error_400(&conn->req, "Bad Request", body, H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION);
}
