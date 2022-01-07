
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef scalar_t__ ev_uint16_t ;


 int HTTP_BIND_IPV6 ;
 int event_errx (int,char*) ;
 struct evhttp_bound_socket* evhttp_bind_socket_with_handle (struct evhttp*,char*,scalar_t__) ;
 int evhttp_bound_socket_get_fd (struct evhttp_bound_socket*) ;
 int regress_get_socket_port (int ) ;

__attribute__((used)) static int
http_bind(struct evhttp *myhttp, ev_uint16_t *pport, int mask)
{
 int port;
 struct evhttp_bound_socket *sock;
 int ipv6 = mask & HTTP_BIND_IPV6;

 if (ipv6)
  sock = evhttp_bind_socket_with_handle(myhttp, "::1", *pport);
 else
  sock = evhttp_bind_socket_with_handle(myhttp, "127.0.0.1", *pport);

 if (sock == ((void*)0)) {
  if (ipv6)
   return -1;
  else
   event_errx(1, "Could not start web server");
 }

 port = regress_get_socket_port(evhttp_bound_socket_get_fd(sock));
 if (port < 0)
  return -1;
 *pport = (ev_uint16_t) port;

 return 0;
}
