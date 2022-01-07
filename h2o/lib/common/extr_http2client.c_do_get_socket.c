
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http2client_stream_t {TYPE_2__* conn; } ;
typedef int h2o_socket_t ;
typedef int h2o_httpclient_t ;
struct TYPE_3__ {int * sock; } ;
struct TYPE_4__ {TYPE_1__ super; } ;



__attribute__((used)) static h2o_socket_t *do_get_socket(h2o_httpclient_t *_client)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    return stream->conn->super.sock;
}
