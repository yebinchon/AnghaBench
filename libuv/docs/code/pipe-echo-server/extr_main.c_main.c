
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_pipe_t ;


 int PIPENAME ;
 int SIGINT ;
 int UV_RUN_DEFAULT ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_new_connection ;
 int remove_sock ;
 int signal (int ,int ) ;
 int stderr ;
 int uv_default_loop () ;
 char* uv_err_name (int) ;
 int uv_listen (int *,int,int ) ;
 int uv_pipe_bind (int *,int ) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    uv_pipe_t server;
    uv_pipe_init(loop, &server, 0);

    signal(SIGINT, remove_sock);

    int r;
    if ((r = uv_pipe_bind(&server, PIPENAME))) {
        fprintf(stderr, "Bind error %s\n", uv_err_name(r));
        return 1;
    }
    if ((r = uv_listen((uv_stream_t*) &server, 128, on_new_connection))) {
        fprintf(stderr, "Listen error %s\n", uv_err_name(r));
        return 2;
    }
    return uv_run(loop, UV_RUN_DEFAULT);
}
