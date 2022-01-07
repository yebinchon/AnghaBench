
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_send_t ;
typedef int uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int UV_RUN_DEFAULT ;
 int UV_UDP_REUSEADDR ;
 int alloc_buffer ;
 int loop ;
 int make_discover_msg () ;
 int on_read ;
 int on_send ;
 int recv_socket ;
 int send_socket ;
 int uv_default_loop () ;
 int uv_ip4_addr (char*,int,struct sockaddr_in*) ;
 int uv_run (int ,int ) ;
 int uv_udp_bind (int *,struct sockaddr const*,int ) ;
 int uv_udp_init (int ,int *) ;
 int uv_udp_recv_start (int *,int ,int ) ;
 int uv_udp_send (int *,int *,int *,int,struct sockaddr const*,int ) ;
 int uv_udp_set_broadcast (int *,int) ;

int main() {
    loop = uv_default_loop();

    uv_udp_init(loop, &recv_socket);
    struct sockaddr_in recv_addr;
    uv_ip4_addr("0.0.0.0", 68, &recv_addr);
    uv_udp_bind(&recv_socket, (const struct sockaddr *)&recv_addr, UV_UDP_REUSEADDR);
    uv_udp_recv_start(&recv_socket, alloc_buffer, on_read);

    uv_udp_init(loop, &send_socket);
    struct sockaddr_in broadcast_addr;
    uv_ip4_addr("0.0.0.0", 0, &broadcast_addr);
    uv_udp_bind(&send_socket, (const struct sockaddr *)&broadcast_addr, 0);
    uv_udp_set_broadcast(&send_socket, 1);

    uv_udp_send_t send_req;
    uv_buf_t discover_msg = make_discover_msg();

    struct sockaddr_in send_addr;
    uv_ip4_addr("255.255.255.255", 67, &send_addr);
    uv_udp_send(&send_req, &send_socket, &discover_msg, 1, (const struct sockaddr *)&send_addr, on_send);

    return uv_run(loop, UV_RUN_DEFAULT);
}
