
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* htc_close ) (struct connection*,int) ;} ;


 TYPE_1__* HTC_FUNC (struct connection*) ;
 int client_close_connection (struct connection*,int) ;
 int outbound_http_connections ;
 int server_reader (struct connection*) ;
 int stub1 (struct connection*,int) ;

int htc_close_connection (struct connection *c, int who) {
  outbound_http_connections--;

  server_reader (c);

  if (HTC_FUNC(c)->htc_close != ((void*)0)) {
    HTC_FUNC(c)->htc_close (c, who);
  }

  return client_close_connection (c, who);
}
