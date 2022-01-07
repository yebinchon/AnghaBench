
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_server_port {int dummy; } ;
typedef int evutil_socket_t ;
typedef int evdns_request_callback_fn_type ;


 struct evdns_server_port* evdns_add_server_port_with_base (int *,int ,int,int ,void*) ;

struct evdns_server_port *
evdns_add_server_port(evutil_socket_t socket, int flags, evdns_request_callback_fn_type cb, void *user_data)
{
 return evdns_add_server_port_with_base(((void*)0), socket, flags, cb, user_data);
}
