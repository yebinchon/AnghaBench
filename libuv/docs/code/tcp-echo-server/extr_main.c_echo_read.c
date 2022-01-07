
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ write_req_t ;
typedef int uv_write_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {int base; } ;
typedef TYPE_2__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ UV_EOF ;
 int echo_write ;
 int fprintf (int ,char*,char*) ;
 int free (int ) ;
 scalar_t__ malloc (int) ;
 int on_close ;
 int stderr ;
 int uv_buf_init (int ,scalar_t__) ;
 int uv_close (int *,int ) ;
 char* uv_err_name (scalar_t__) ;
 int uv_write (int *,int *,int *,int,int ) ;

void echo_read(uv_stream_t *client, ssize_t nread, const uv_buf_t *buf) {
    if (nread > 0) {
        write_req_t *req = (write_req_t*) malloc(sizeof(write_req_t));
        req->buf = uv_buf_init(buf->base, nread);
        uv_write((uv_write_t*) req, client, &req->buf, 1, echo_write);
        return;
    }
    if (nread < 0) {
        if (nread != UV_EOF)
            fprintf(stderr, "Read error %s\n", uv_err_name(nread));
        uv_close((uv_handle_t*) client, on_close);
    }

    free(buf->base);
}
