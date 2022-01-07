
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_storage {TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr_in {TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evdns_server_port {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef int ss ;
typedef int sin ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;


 int AF_INET ;
 int SOCK_DGRAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 struct evdns_server_port* evdns_add_server_port_with_base (struct event_base*,scalar_t__,int ,int ,struct event_base*) ;
 int evdns_base_free (struct evdns_base*,int) ;
 int evdns_base_nameserver_sockaddr_add (struct evdns_base*,struct sockaddr*,int,int ) ;
 struct evdns_base* evdns_base_new (struct event_base*,int ) ;
 int evdns_close_server_port (struct evdns_server_port*) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 int evutil_closesocket (scalar_t__) ;
 int evutil_make_socket_nonblocking (scalar_t__) ;
 int gaic_launch (struct event_base*,struct evdns_base*) ;
 int gaic_server_cb ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 int htonl (int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int tt_abort_perror (char*) ;

__attribute__((used)) static void
test_getaddrinfo_async_cancel_stress(void *ptr)
{
 struct event_base *base;
 struct evdns_base *dns_base = ((void*)0);
 struct evdns_server_port *server = ((void*)0);
 evutil_socket_t fd = -1;
 struct sockaddr_in sin;
 struct sockaddr_storage ss;
 ev_socklen_t slen;
 unsigned i;

 base = event_base_new();
 dns_base = evdns_base_new(base, 0);

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_port = 0;
 sin.sin_addr.s_addr = htonl(0x7f000001);
 if ((fd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
  tt_abort_perror("socket");
 }
 evutil_make_socket_nonblocking(fd);
 if (bind(fd, (struct sockaddr*)&sin, sizeof(sin))<0) {
  tt_abort_perror("bind");
 }
 server = evdns_add_server_port_with_base(base, fd, 0, gaic_server_cb,
     base);

 memset(&ss, 0, sizeof(ss));
 slen = sizeof(ss);
 if (getsockname(fd, (struct sockaddr*)&ss, &slen)<0) {
  tt_abort_perror("getsockname");
 }
 evdns_base_nameserver_sockaddr_add(dns_base,
     (struct sockaddr*)&ss, slen, 0);

 for (i = 0; i < 1000; ++i) {
  gaic_launch(base, dns_base);
 }

 event_base_dispatch(base);

end:
 if (dns_base)
  evdns_base_free(dns_base, 1);
 if (server)
  evdns_close_server_port(server);
 if (base)
  event_base_free(base);
 if (fd >= 0)
  evutil_closesocket(fd);
}
