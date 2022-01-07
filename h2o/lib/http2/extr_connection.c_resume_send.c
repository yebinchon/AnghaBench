
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_8__ {TYPE_1__ list; } ;
struct TYPE_9__ {TYPE_2__ scheduler; } ;
typedef TYPE_3__ h2o_http2_conn_t ;


 scalar_t__ h2o_http2_conn_get_buffer_window (TYPE_3__*) ;
 int request_gathered_write (TYPE_3__*) ;

__attribute__((used)) static void resume_send(h2o_http2_conn_t *conn)
{
    if (h2o_http2_conn_get_buffer_window(conn) <= 0)
        return;




    request_gathered_write(conn);
}
