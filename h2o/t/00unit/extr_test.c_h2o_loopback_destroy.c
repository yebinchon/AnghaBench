
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int req; int body; } ;
typedef TYPE_1__ h2o_loopback_conn_t ;


 int free (TYPE_1__*) ;
 int h2o_buffer_dispose (int *) ;
 int h2o_dispose_request (int *) ;

void h2o_loopback_destroy(h2o_loopback_conn_t *conn)
{
    h2o_buffer_dispose(&conn->body);
    h2o_dispose_request(&conn->req);
    free(conn);
}
