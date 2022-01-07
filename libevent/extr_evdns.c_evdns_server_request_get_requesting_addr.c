
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct server_request {int addrlen; int addr; } ;
struct evdns_server_request {int dummy; } ;


 struct server_request* TO_SERVER_REQUEST (struct evdns_server_request*) ;
 int memcpy (struct sockaddr*,int *,int) ;

int
evdns_server_request_get_requesting_addr(struct evdns_server_request *req_, struct sockaddr *sa, int addr_len)
{
 struct server_request *req = TO_SERVER_REQUEST(req_);
 if (addr_len < (int)req->addrlen)
  return -1;
 memcpy(sa, &(req->addr), req->addrlen);
 return req->addrlen;
}
