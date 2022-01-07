
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct connection {scalar_t__ pending_queries; scalar_t__ generation; int flags; TYPE_1__ Out; } ;
struct TYPE_4__ {int (* ht_alarm ) (struct connection*) ;} ;


 int C_WANTWR ;
 TYPE_2__* HTS_FUNC (struct connection*) ;
 scalar_t__ conn_generation ;
 int stub1 (struct connection*) ;

int hts_php_alarm (struct connection *c) {
  HTS_FUNC(c)->ht_alarm (c);
  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  return 0;
}
