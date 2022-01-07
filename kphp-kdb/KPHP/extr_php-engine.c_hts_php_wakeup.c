
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct connection {scalar_t__ status; int flags; TYPE_1__ Out; } ;
struct TYPE_4__ {int (* ht_wakeup ) (struct connection*) ;} ;


 int C_WANTWR ;
 TYPE_2__* HTS_FUNC (struct connection*) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_aio ;
 scalar_t__ conn_wait_net ;
 int stub1 (struct connection*) ;

int hts_php_wakeup (struct connection *c) {
  if (c->status == conn_wait_net || c->status == conn_wait_aio) {
    c->status = conn_expect_query;
    HTS_FUNC(c)->ht_wakeup (c);
  }
  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }


  return 0;
}
