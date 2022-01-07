
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct connection {scalar_t__ status; scalar_t__ pending_queries; scalar_t__ generation; int flags; TYPE_1__ Out; } ;
struct TYPE_4__ {int (* sql_wakeup ) (struct connection*) ;} ;


 int C_WANTWR ;
 TYPE_2__* SQLC_FUNC (struct connection*) ;
 scalar_t__ conn_generation ;
 scalar_t__ conn_wait_answer ;
 scalar_t__ conn_wait_net ;
 int stub1 (struct connection*) ;

__attribute__((used)) static int sqlc_wakeup (struct connection *c) {
  if (c->status == conn_wait_net) {
    c->status = conn_wait_answer;
    SQLC_FUNC(c)->sql_wakeup (c);
  }
  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  return 0;
}
