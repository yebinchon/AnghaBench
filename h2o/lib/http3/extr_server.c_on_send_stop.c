
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http3_server_stream_t {int dummy; } ;
struct TYPE_3__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;


 int H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT ;
 int set_state (struct st_h2o_http3_server_stream_t*,int ) ;

__attribute__((used)) static int on_send_stop(quicly_stream_t *qs, int err)
{
    struct st_h2o_http3_server_stream_t *stream = qs->data;

    set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);

    return 0;
}
