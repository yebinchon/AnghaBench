
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct nameserver {int state; TYPE_1__* base; scalar_t__ timedout; scalar_t__ failed_times; int * probe_request; int timeout_event; int address; } ;
typedef int addrbuf ;
struct TYPE_3__ {int global_good_nameservers; } ;


 int ASSERT_LOCKED (TYPE_1__*) ;
 int EVDNS_LOG_MSG ;
 int evdns_cancel_request (TYPE_1__*,int *) ;
 int evtimer_del (int *) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int log (int ,char*,int ) ;

__attribute__((used)) static void
nameserver_up(struct nameserver *const ns)
{
 char addrbuf[128];
 ASSERT_LOCKED(ns->base);
 if (ns->state) return;
 log(EVDNS_LOG_MSG, "Nameserver %s is back up",
     evutil_format_sockaddr_port_(
      (struct sockaddr *)&ns->address,
      addrbuf, sizeof(addrbuf)));
 evtimer_del(&ns->timeout_event);
 if (ns->probe_request) {
  evdns_cancel_request(ns->base, ns->probe_request);
  ns->probe_request = ((void*)0);
 }
 ns->state = 1;
 ns->failed_times = 0;
 ns->timedout = 0;
 ns->base->global_good_nameservers++;
}
