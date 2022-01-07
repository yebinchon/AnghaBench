
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_pipe_t ;
typedef int uv_os_fd_t ;
typedef scalar_t__ uv_handle_type ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ UV_EOF ;
 scalar_t__ UV_TCP ;
 int alloc_buffer ;
 int assert (int) ;
 int echo_read ;
 int fprintf (int ,char*,...) ;
 int getpid () ;
 int loop ;
 scalar_t__ malloc (int) ;
 int stderr ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_close (int *,int *) ;
 char* uv_err_name (scalar_t__) ;
 int uv_fileno (int const*,int*) ;
 int uv_pipe_pending_count (int *) ;
 scalar_t__ uv_pipe_pending_type (int *) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_tcp_init (int ,int *) ;

void on_new_connection(uv_stream_t *q, ssize_t nread, const uv_buf_t *buf) {
    if (nread < 0) {
        if (nread != UV_EOF)
            fprintf(stderr, "Read error %s\n", uv_err_name(nread));
        uv_close((uv_handle_t*) q, ((void*)0));
        return;
    }

    uv_pipe_t *pipe = (uv_pipe_t*) q;
    if (!uv_pipe_pending_count(pipe)) {
        fprintf(stderr, "No pending count\n");
        return;
    }

    uv_handle_type pending = uv_pipe_pending_type(pipe);
    assert(pending == UV_TCP);

    uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, client);
    if (uv_accept(q, (uv_stream_t*) client) == 0) {
        uv_os_fd_t fd;
        uv_fileno((const uv_handle_t*) client, &fd);
        fprintf(stderr, "Worker %d: Accepted fd %d\n", getpid(), fd);
        uv_read_start((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        uv_close((uv_handle_t*) client, ((void*)0));
    }
}
