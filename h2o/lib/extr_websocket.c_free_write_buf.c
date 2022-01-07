
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t cnt; TYPE_1__* bufs; } ;
struct TYPE_7__ {TYPE_2__ _write_buf; } ;
typedef TYPE_3__ h2o_websocket_conn_t ;
struct TYPE_5__ {int base; } ;


 int free (int ) ;

__attribute__((used)) static void free_write_buf(h2o_websocket_conn_t *conn)
{
    size_t i;
    for (i = 0; i < conn->_write_buf.cnt; ++i)
        free(conn->_write_buf.bufs[i].base);
}
