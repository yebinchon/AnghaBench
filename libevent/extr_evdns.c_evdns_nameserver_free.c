
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameserver {scalar_t__ socket; scalar_t__ state; int timeout_event; int * probe_request; int base; int event; } ;


 int evdns_cancel_request (int ,int *) ;
 int event_debug_unassign (int *) ;
 int event_del (int *) ;
 int evutil_closesocket (scalar_t__) ;
 int mm_free (struct nameserver*) ;

__attribute__((used)) static void
evdns_nameserver_free(struct nameserver *server)
{
 if (server->socket >= 0)
  evutil_closesocket(server->socket);
 (void) event_del(&server->event);
 event_debug_unassign(&server->event);
 if (server->state == 0)
  (void) event_del(&server->timeout_event);
 if (server->probe_request) {
  evdns_cancel_request(server->base, server->probe_request);
  server->probe_request = ((void*)0);
 }
 event_debug_unassign(&server->timeout_event);
 mm_free(server);
}
