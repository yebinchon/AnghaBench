
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_getaddrinfo_t ;
typedef int uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; } ;


 int fprintf (int ,char*,char*) ;
 int loop ;
 scalar_t__ malloc (int) ;
 int on_connect ;
 int stderr ;
 char* uv_err_name (int) ;
 int uv_freeaddrinfo (struct addrinfo*) ;
 int uv_ip4_name (struct sockaddr_in*,char*,int) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

void on_resolved(uv_getaddrinfo_t *resolver, int status, struct addrinfo *res) {
    if (status < 0) {
        fprintf(stderr, "getaddrinfo callback error %s\n", uv_err_name(status));
        return;
    }

    char addr[17] = {'\0'};
    uv_ip4_name((struct sockaddr_in*) res->ai_addr, addr, 16);
    fprintf(stderr, "%s\n", addr);

    uv_connect_t *connect_req = (uv_connect_t*) malloc(sizeof(uv_connect_t));
    uv_tcp_t *socket = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, socket);

    uv_tcp_connect(connect_req, socket, (const struct sockaddr*) res->ai_addr, on_connect);

    uv_freeaddrinfo(res);
}
