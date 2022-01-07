
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1_conn_t {int * sock; } ;
typedef int ptls_t ;
typedef int h2o_conn_t ;


 int assert (int ) ;
 int * h2o_socket_get_ptls (int *) ;

__attribute__((used)) static ptls_t *get_ptls(h2o_conn_t *_conn)
{
    struct st_h2o_http1_conn_t *conn = (void *)_conn;
    assert(conn->sock != ((void*)0) && "it never becomes NULL, right?");
    return h2o_socket_get_ptls(conn->sock);
}
