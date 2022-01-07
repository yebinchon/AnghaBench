
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct st_stream_data_t {int * outfp; } ;
struct TYPE_11__ {int conn; int recvstate; struct st_stream_data_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;
struct TYPE_12__ {scalar_t__ len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;
struct TYPE_15__ {TYPE_3__* now; } ;
struct TYPE_14__ {int * path; } ;
struct TYPE_13__ {scalar_t__ (* cb ) (TYPE_3__*) ;} ;
typedef int FILE ;


 TYPE_9__ ctx ;
 int dump_stats (int ,int ) ;
 scalar_t__ enqueue_requests_at ;
 int fclose (int *) ;
 int fflush (int *) ;
 int fwrite (int ,int,scalar_t__,int *) ;
 int quicly_close (int ,int ,char*) ;
 scalar_t__ quicly_recvstate_transfer_complete (int *) ;
 TYPE_2__ quicly_streambuf_ingress_get (TYPE_1__*) ;
 int quicly_streambuf_ingress_receive (TYPE_1__*,size_t,void const*,size_t) ;
 int quicly_streambuf_ingress_shift (TYPE_1__*,scalar_t__) ;
 TYPE_4__* reqs ;
 scalar_t__ request_interval ;
 int stderr ;
 int * stdout ;
 scalar_t__ stub1 (TYPE_3__*) ;

__attribute__((used)) static int client_on_receive(quicly_stream_t *stream, size_t off, const void *src, size_t len)
{
    struct st_stream_data_t *stream_data = stream->data;
    ptls_iovec_t input;
    int ret;

    if ((ret = quicly_streambuf_ingress_receive(stream, off, src, len)) != 0)
        return ret;

    if ((input = quicly_streambuf_ingress_get(stream)).len != 0) {
        FILE *out = (stream_data->outfp == ((void*)0)) ? stdout : stream_data->outfp;
        fwrite(input.base, 1, input.len, out);
        fflush(out);
        quicly_streambuf_ingress_shift(stream, input.len);
    }

    if (quicly_recvstate_transfer_complete(&stream->recvstate)) {
        if (stream_data->outfp != ((void*)0))
            fclose(stream_data->outfp);
        static size_t num_resp_received;
        ++num_resp_received;
        if (reqs[num_resp_received].path == ((void*)0)) {
            if (request_interval != 0) {
                enqueue_requests_at = ctx.now->cb(ctx.now) + request_interval;
            } else {
                dump_stats(stderr, stream->conn);
                quicly_close(stream->conn, 0, "");
            }
        }
    }

    return 0;
}
