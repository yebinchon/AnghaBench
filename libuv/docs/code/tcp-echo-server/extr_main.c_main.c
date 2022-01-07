
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct sockaddr {int dummy; } ;


 int DEFAULT_BACKLOG ;
 int DEFAULT_PORT ;
 int UV_RUN_DEFAULT ;
 int addr ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_new_connection ;
 int stderr ;
 int uv_default_loop () ;
 int uv_ip4_addr (char*,int ,int *) ;
 int uv_listen (int *,int ,int ) ;
 int uv_run (int ,int ) ;
 char* uv_strerror (int) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

int main() {
    loop = uv_default_loop();

    uv_tcp_t server;
    uv_tcp_init(loop, &server);

    uv_ip4_addr("0.0.0.0", DEFAULT_PORT, &addr);

    uv_tcp_bind(&server, (const struct sockaddr*)&addr, 0);
    int r = uv_listen((uv_stream_t*) &server, DEFAULT_BACKLOG, on_new_connection);
    if (r) {
        fprintf(stderr, "Listen error %s\n", uv_strerror(r));
        return 1;
    }
    return uv_run(loop, UV_RUN_DEFAULT);
}
