
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* ht_close ) (struct connection*,int) ;} ;


 TYPE_1__* HTS_FUNC (struct connection*) ;
 int http_connections ;
 int server_close_connection (struct connection*,int) ;
 int stub1 (struct connection*,int) ;

int hts_close_connection (struct connection *c, int who) {
  http_connections--;

  if (HTS_FUNC(c)->ht_close != ((void*)0)) {
    HTS_FUNC(c)->ht_close (c, who);
  }

  return server_close_connection (c, who);
}
