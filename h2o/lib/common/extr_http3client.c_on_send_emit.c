
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t bytes_written; int (* cb ) (int *,size_t,int ) ;} ;
struct st_h2o_http3client_req_t {TYPE_3__* quic; int super; TYPE_2__ proceed_req; TYPE_1__* sendbuf; } ;
struct TYPE_9__ {struct st_h2o_http3client_req_t* data; } ;
typedef TYPE_4__ quicly_stream_t ;
struct TYPE_8__ {int sendstate; } ;
struct TYPE_6__ {size_t size; scalar_t__ bytes; } ;


 int H2O_SEND_STATE_FINAL ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 int memcpy (void*,scalar_t__,size_t) ;
 scalar_t__ quicly_sendstate_is_open (int *) ;
 int stub1 (int *,size_t,int ) ;

__attribute__((used)) static int on_send_emit(quicly_stream_t *qs, size_t off, void *dst, size_t *len, int *wrote_all)
{
    struct st_h2o_http3client_req_t *req = qs->data;

    if (*len >= req->sendbuf->size - off) {
        *len = req->sendbuf->size - off;
        *wrote_all = 1;
    } else {
        *wrote_all = 0;
    }
    memcpy(dst, req->sendbuf->bytes + off, *len);

    if (*wrote_all && req->proceed_req.bytes_written != 0) {
        size_t bytes_written = req->proceed_req.bytes_written;
        req->proceed_req.bytes_written = 0;
        req->proceed_req.cb(&req->super, bytes_written,
                            quicly_sendstate_is_open(&req->quic->sendstate) ? H2O_SEND_STATE_IN_PROGRESS : H2O_SEND_STATE_FINAL);
    }

    return 0;
}
