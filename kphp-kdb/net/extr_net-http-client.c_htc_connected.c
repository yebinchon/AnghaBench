
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* htc_becomes_ready ) (struct connection*) ;} ;


 TYPE_1__* HTC_FUNC (struct connection*) ;
 int outbound_http_connections ;
 int stub1 (struct connection*) ;

int htc_connected (struct connection *c) {
  ++outbound_http_connections;

  if (HTC_FUNC(c)->htc_becomes_ready != ((void*)0)) {
    HTC_FUNC(c)->htc_becomes_ready (c);
  }

  return 0;
}
