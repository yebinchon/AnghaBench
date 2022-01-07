
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct request {scalar_t__ tx_count; struct request* next; struct nameserver* const ns; } ;
struct nameserver {int failed_times; int address; int timeout_event; scalar_t__ state; struct evdns_base* base; } ;
struct evdns_base {scalar_t__ global_good_nameservers; int n_req_heads; struct request** req_heads; int global_nameserver_probe_initial_timeout; } ;
typedef int addrbuf ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int EVDNS_LOG_MSG ;
 int EVDNS_LOG_WARN ;
 int EVUTIL_ASSERT (int) ;
 scalar_t__ evtimer_add (int *,int *) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int log (int ,char*,...) ;
 int nameserver_pick (struct evdns_base*) ;
 int request_swap_ns (struct request*,int ) ;

__attribute__((used)) static void
nameserver_failed(struct nameserver *const ns, const char *msg) {
 struct request *req, *started_at;
 struct evdns_base *base = ns->base;
 int i;
 char addrbuf[128];

 ASSERT_LOCKED(base);


 if (!ns->state) return;

 log(EVDNS_LOG_MSG, "Nameserver %s has failed: %s",
     evutil_format_sockaddr_port_(
      (struct sockaddr *)&ns->address,
      addrbuf, sizeof(addrbuf)),
     msg);

 base->global_good_nameservers--;
 EVUTIL_ASSERT(base->global_good_nameservers >= 0);
 if (base->global_good_nameservers == 0) {
  log(EVDNS_LOG_MSG, "All nameservers have failed");
 }

 ns->state = 0;
 ns->failed_times = 1;

 if (evtimer_add(&ns->timeout_event,
  &base->global_nameserver_probe_initial_timeout) < 0) {
  log(EVDNS_LOG_WARN,
      "Error from libevent when adding timer event for %s",
      evutil_format_sockaddr_port_(
       (struct sockaddr *)&ns->address,
       addrbuf, sizeof(addrbuf)));

 }







 if (!base->global_good_nameservers) return;

 for (i = 0; i < base->n_req_heads; ++i) {
  req = started_at = base->req_heads[i];
  if (req) {
   do {
    if (req->tx_count == 0 && req->ns == ns) {


     request_swap_ns(req, nameserver_pick(base));
    }
    req = req->next;
   } while (req != started_at);
  }
 }
}
