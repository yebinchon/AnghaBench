
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* buf_in_flight; TYPE_1__* buf; } ;
struct TYPE_9__ {TYPE_3__ _write; } ;
typedef TYPE_4__ h2o_http2_conn_t ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {size_t size; } ;



__attribute__((used)) static size_t bytes_in_buf(h2o_http2_conn_t *conn)
{
    size_t size = conn->_write.buf->size;
    if (conn->_write.buf_in_flight != 0)
        size += conn->_write.buf_in_flight->size;
    return size;
}
