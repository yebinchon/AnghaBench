
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct child_worker {int pipe; } ;


 size_t child_worker_count ;
 int dummy_buf ;
 int loop ;
 scalar_t__ malloc (int) ;
 size_t round_robin_counter ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int *) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,int *,int *,int,int *,int *) ;
 struct child_worker* workers ;

void on_new_connection(uv_stream_t *server, int status) {
    if (status == -1) {

        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, client);
    if (uv_accept(server, (uv_stream_t*) client) == 0) {
        uv_write_t *write_req = (uv_write_t*) malloc(sizeof(uv_write_t));
        dummy_buf = uv_buf_init("a", 1);
        struct child_worker *worker = &workers[round_robin_counter];
        uv_write2(write_req, (uv_stream_t*) &worker->pipe, &dummy_buf, 1, (uv_stream_t*) client, ((void*)0));
        round_robin_counter = (round_robin_counter + 1) % child_worker_count;
    }
    else {
        uv_close((uv_handle_t*) client, ((void*)0));
    }
}
