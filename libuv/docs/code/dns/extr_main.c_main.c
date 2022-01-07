
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;
struct addrinfo {scalar_t__ ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;


 int IPPROTO_TCP ;
 int PF_INET ;
 int SOCK_STREAM ;
 int UV_RUN_DEFAULT ;
 int fprintf (int ,char*,...) ;
 int loop ;
 int on_resolved ;
 int stderr ;
 int uv_default_loop () ;
 char* uv_err_name (int) ;
 int uv_getaddrinfo (int ,int *,int ,char*,char*,struct addrinfo*) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    struct addrinfo hints;
    hints.ai_family = PF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = 0;

    uv_getaddrinfo_t resolver;
    fprintf(stderr, "irc.freenode.net is... ");
    int r = uv_getaddrinfo(loop, &resolver, on_resolved, "irc.freenode.net", "6667", &hints);

    if (r) {
        fprintf(stderr, "getaddrinfo call error %s\n", uv_err_name(r));
        return 1;
    }
    return uv_run(loop, UV_RUN_DEFAULT);
}
