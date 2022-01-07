
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_target {struct connection* first; TYPE_1__* target; } ;
struct process_id {int dummy; } ;
struct connection {struct connection* next; } ;
struct TYPE_4__ {int remote_pid; } ;
struct TYPE_3__ {struct connection* first_conn; } ;


 TYPE_2__* RPCS_DATA (struct connection*) ;
 int cr_ok ;
 int lrand48 () ;
 int matches_pid (int *,struct process_id*) ;
 int server_check_ready (struct connection*) ;

int rpc_target_choose_random_connections (struct rpc_target *S, struct process_id *PID, int limit, struct connection *buf[]) {
  if (!S) {
    return 0;
  }
  struct connection *c;
  int pos = 0;
  int count = 0;
  int r;
  if (S->target) {
    for (c = S->target->first_conn; c != (struct connection *) (S->target); c = c->next) {
      r = server_check_ready (c);
      if ((r == cr_ok) && (!PID || matches_pid (&RPCS_DATA(c)->remote_pid, PID) >= 1)) {
        if (pos < limit) {
          buf[pos ++] = c;
        } else {
          int t = lrand48 () % (count + 1);
          if (t < limit) {
            buf[t] = c;
          }
        }
        count ++;
      }
    }
  }
  for (c = S->first; c != (struct connection *) (S); c = c->next) {
    r = server_check_ready (c);
    if ((r == cr_ok) && (!PID || matches_pid (&RPCS_DATA(c)->remote_pid, PID) >= 1)) {
      if (pos < limit) {
        buf[pos ++] = c;
      } else {
        int t = lrand48 () % (count + 1);
        if (t < limit) {
          buf[t] = c;
        }
      }
      count ++;
    }
  }
  return pos;
}
