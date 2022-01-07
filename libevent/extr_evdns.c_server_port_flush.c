
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct server_request {scalar_t__ addrlen; int addr; scalar_t__ response_len; int response; } ;
struct evdns_server_port {int event; int socket; int event_base; struct server_request* pending_replies; } ;
typedef int ev_socklen_t ;


 int ASSERT_LOCKED (struct evdns_server_port*) ;
 int EVDNS_LOG_WARN ;
 int EVUTIL_ASSERT (int) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 int EV_PERSIST ;
 int EV_READ ;
 scalar_t__ event_add (int *,int *) ;
 int event_assign (int *,int ,int ,int,int ,struct evdns_server_port*) ;
 int event_del (int *) ;
 int evutil_socket_error_to_string (int) ;
 int evutil_socket_geterror (int ) ;
 int log (int ,char*,...) ;
 int sendto (int ,int ,int,int ,struct sockaddr*,int ) ;
 int server_port_ready_callback ;
 scalar_t__ server_request_free (struct server_request*) ;

__attribute__((used)) static void
server_port_flush(struct evdns_server_port *port)
{
 struct server_request *req = port->pending_replies;
 ASSERT_LOCKED(port);
 while (req) {
  int r = sendto(port->socket, req->response, (int)req->response_len, 0,
      (struct sockaddr*) &req->addr, (ev_socklen_t)req->addrlen);
  if (r < 0) {
   int err = evutil_socket_geterror(port->socket);
   if (EVUTIL_ERR_RW_RETRIABLE(err))
    return;
   log(EVDNS_LOG_WARN, "Error %s (%d) while writing response to port; dropping", evutil_socket_error_to_string(err), err);
  }
  if (server_request_free(req)) {

   return;
  } else {
   EVUTIL_ASSERT(req != port->pending_replies);
   req = port->pending_replies;
  }
 }


 (void) event_del(&port->event);
 event_assign(&port->event, port->event_base,
     port->socket, EV_READ | EV_PERSIST,
     server_port_ready_callback, port);

 if (event_add(&port->event, ((void*)0)) < 0) {
  log(EVDNS_LOG_WARN, "Error from libevent when adding event for DNS server.");

 }
}
