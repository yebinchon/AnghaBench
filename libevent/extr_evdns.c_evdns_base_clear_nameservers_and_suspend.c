
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ transmit_me; scalar_t__ trans_id; int timeout_event; int * ns; scalar_t__ reissue_count; scalar_t__ tx_count; struct request* next; } ;
struct nameserver {scalar_t__ socket; int * probe_request; int base; int timeout_event; int event; struct nameserver* next; } ;
struct evdns_base {int n_req_heads; scalar_t__ global_requests_inflight; struct request** req_heads; TYPE_1__* req_waiting_head; int global_requests_waiting; scalar_t__ global_good_nameservers; struct nameserver* server_head; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_cancel_request (int ,int *) ;
 int evdns_request_insert (struct request*,TYPE_1__**) ;
 int event_del (int *) ;
 int evtimer_del (int *) ;
 scalar_t__ evtimer_initialized (int *) ;
 int evutil_closesocket (scalar_t__) ;
 int mm_free (struct nameserver*) ;

int
evdns_base_clear_nameservers_and_suspend(struct evdns_base *base)
{
 struct nameserver *server, *started_at;
 int i;

 EVDNS_LOCK(base);
 server = base->server_head;
 started_at = base->server_head;
 if (!server) {
  EVDNS_UNLOCK(base);
  return 0;
 }
 while (1) {
  struct nameserver *next = server->next;
  (void) event_del(&server->event);
  if (evtimer_initialized(&server->timeout_event))
   (void) evtimer_del(&server->timeout_event);
  if (server->probe_request) {
   evdns_cancel_request(server->base, server->probe_request);
   server->probe_request = ((void*)0);
  }
  if (server->socket >= 0)
   evutil_closesocket(server->socket);
  mm_free(server);
  if (next == started_at)
   break;
  server = next;
 }
 base->server_head = ((void*)0);
 base->global_good_nameservers = 0;

 for (i = 0; i < base->n_req_heads; ++i) {
  struct request *req, *req_started_at;
  req = req_started_at = base->req_heads[i];
  while (req) {
   struct request *next = req->next;
   req->tx_count = req->reissue_count = 0;
   req->ns = ((void*)0);

   (void) evtimer_del(&req->timeout_event);
   req->trans_id = 0;
   req->transmit_me = 0;

   base->global_requests_waiting++;
   evdns_request_insert(req, &base->req_waiting_head);




   base->req_waiting_head = base->req_waiting_head->prev;

   if (next == req_started_at)
    break;
   req = next;
  }
  base->req_heads[i] = ((void*)0);
 }

 base->global_requests_inflight = 0;

 EVDNS_UNLOCK(base);
 return 0;
}
