
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct nameserver {char write_waiting; int address; int event; int socket; TYPE_1__* base; } ;
typedef int addrbuf ;
struct TYPE_2__ {int event_base; } ;


 int ASSERT_LOCKED (TYPE_1__*) ;
 int EVDNS_LOG_WARN ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 scalar_t__ event_add (int *,int *) ;
 int event_assign (int *,int ,int ,int,int ,struct nameserver*) ;
 int event_del (int *) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int log (int ,char*,int ) ;
 int nameserver_ready_callback ;

__attribute__((used)) static void
nameserver_write_waiting(struct nameserver *ns, char waiting) {
 ASSERT_LOCKED(ns->base);
 if (ns->write_waiting == waiting) return;

 ns->write_waiting = waiting;
 (void) event_del(&ns->event);
 event_assign(&ns->event, ns->base->event_base,
     ns->socket, EV_READ | (waiting ? EV_WRITE : 0) | EV_PERSIST,
     nameserver_ready_callback, ns);
 if (event_add(&ns->event, ((void*)0)) < 0) {
  char addrbuf[128];
  log(EVDNS_LOG_WARN, "Error from libevent when adding event for %s",
      evutil_format_sockaddr_port_(
       (struct sockaddr *)&ns->address,
       addrbuf, sizeof(addrbuf)));

 }
}
