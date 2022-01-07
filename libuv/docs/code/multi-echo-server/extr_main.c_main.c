
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int UV_RUN_DEFAULT ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_new_connection ;
 int setup_workers () ;
 int stderr ;
 int uv_default_loop () ;
 char* uv_err_name (int) ;
 int uv_ip4_addr (char*,int,struct sockaddr_in*) ;
 int uv_listen (int *,int,int ) ;
 int uv_run (int ,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

int main() {
    loop = uv_default_loop();

    setup_workers();

    uv_tcp_t server;
    uv_tcp_init(loop, &server);

    struct sockaddr_in bind_addr;
    uv_ip4_addr("0.0.0.0", 7000, &bind_addr);
    uv_tcp_bind(&server, (const struct sockaddr *)&bind_addr, 0);
    int r;
    if ((r = uv_listen((uv_stream_t*) &server, 128, on_new_connection))) {
        fprintf(stderr, "Listen error %s\n", uv_err_name(r));
        return 2;
    }
    return uv_run(loop, UV_RUN_DEFAULT);
}
