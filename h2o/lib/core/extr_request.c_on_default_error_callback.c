
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* pathconf; int * error_logs; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_12__ {int len; int base; } ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_9__ {scalar_t__ emit_request_errors; } ;
struct TYPE_10__ {TYPE_1__ error_log; } ;


 int h2o_buffer_append (int **,int ,int ) ;
 int h2o_buffer_init (int **,int *) ;
 int h2o_socket_buffer_prototype ;
 int h2o_write_error_log (TYPE_4__,TYPE_4__) ;

__attribute__((used)) static void on_default_error_callback(void *data, h2o_iovec_t prefix, h2o_iovec_t msg)
{
    h2o_req_t *req = (void *)data;
    if (req->error_logs == ((void*)0))
        h2o_buffer_init(&req->error_logs, &h2o_socket_buffer_prototype);
    h2o_buffer_append(&req->error_logs, prefix.base, prefix.len);
    h2o_buffer_append(&req->error_logs, msg.base, msg.len);

    if (req->pathconf->error_log.emit_request_errors) {
        h2o_write_error_log(prefix, msg);
    }
}
