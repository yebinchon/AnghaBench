
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ UV_EOF ;
 int file_pipe ;
 int free (scalar_t__) ;
 int on_file_write ;
 int on_stdout_write ;
 int stdin_pipe ;
 int stdout_pipe ;
 int uv_close (int *,int *) ;
 int write_data (int *,scalar_t__,TYPE_1__ const,int ) ;

void read_stdin(uv_stream_t *stream, ssize_t nread, const uv_buf_t *buf) {
    if (nread < 0){
        if (nread == UV_EOF){

            uv_close((uv_handle_t *)&stdin_pipe, ((void*)0));
            uv_close((uv_handle_t *)&stdout_pipe, ((void*)0));
            uv_close((uv_handle_t *)&file_pipe, ((void*)0));
        }
    } else if (nread > 0) {
        write_data((uv_stream_t *)&stdout_pipe, nread, *buf, on_stdout_write);
        write_data((uv_stream_t *)&file_pipe, nread, *buf, on_file_write);
    }


    if (buf->base)
        free(buf->base);
}
