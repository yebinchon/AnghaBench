
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r; } ;
struct TYPE_3__ {scalar_t__ r; } ;
struct evdns_getaddrinfo_request {int user_canceled; int evdns_base; TYPE_2__ ipv6_request; TYPE_1__ ipv4_request; int timeout; scalar_t__ request_done; } ;


 int EVDNS_LOCK (int ) ;
 int EVDNS_UNLOCK (int ) ;
 int evdns_cancel_request (int ,scalar_t__) ;
 int event_del (int *) ;

void
evdns_getaddrinfo_cancel(struct evdns_getaddrinfo_request *data)
{
 EVDNS_LOCK(data->evdns_base);
 if (data->request_done) {
  EVDNS_UNLOCK(data->evdns_base);
  return;
 }
 event_del(&data->timeout);
 data->user_canceled = 1;
 if (data->ipv4_request.r)
  evdns_cancel_request(data->evdns_base, data->ipv4_request.r);
 if (data->ipv6_request.r)
  evdns_cancel_request(data->evdns_base, data->ipv6_request.r);
 EVDNS_UNLOCK(data->evdns_base);
}
