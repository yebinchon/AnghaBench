
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1_conn_t {int _conns; int * sock; int req; int * req_body; int _timeout_entry; int super; } ;


 int H1_CLOSE ;
 int H2O_PROBE_CONN0 (int ,int *) ;
 int free (struct st_h2o_http1_conn_t*) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_dispose_request (int *) ;
 int h2o_linklist_unlink (int *) ;
 int h2o_socket_close (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void close_connection(struct st_h2o_http1_conn_t *conn, int close_socket)
{
    if (conn->sock != ((void*)0))
        H2O_PROBE_CONN0(H1_CLOSE, &conn->super);
    h2o_timer_unlink(&conn->_timeout_entry);
    if (conn->req_body != ((void*)0))
        h2o_buffer_dispose(&conn->req_body);
    h2o_dispose_request(&conn->req);
    if (conn->sock != ((void*)0) && close_socket)
        h2o_socket_close(conn->sock);
    h2o_linklist_unlink(&conn->_conns);
    free(conn);
}
