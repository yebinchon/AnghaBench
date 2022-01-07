
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nameserver {scalar_t__ addrlen; int address; struct nameserver* next; } ;
struct evdns_base {struct nameserver* server_head; } ;
typedef scalar_t__ ev_socklen_t ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int memcpy (struct sockaddr*,int *,scalar_t__) ;

int
evdns_base_get_nameserver_addr(struct evdns_base *base, int idx,
    struct sockaddr *sa, ev_socklen_t len)
{
 int result = -1;
 int i;
 struct nameserver *server;
 EVDNS_LOCK(base);
 server = base->server_head;
 for (i = 0; i < idx && server; ++i, server = server->next) {
  if (server->next == base->server_head)
   goto done;
 }
 if (! server)
  goto done;

 if (server->addrlen > len) {
  result = (int) server->addrlen;
  goto done;
 }

 memcpy(sa, &server->address, server->addrlen);
 result = (int) server->addrlen;
done:
 EVDNS_UNLOCK(base);
 return result;
}
