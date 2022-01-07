
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_target {double next_reconnect_timeout; double reconnect_timeout; int next_reconnect; scalar_t__ active_outbound_connections; } ;


 double MAX_RECONNECT_INTERVAL ;
 double drand48 () ;
 int precise_now ;

int compute_next_reconnect (struct conn_target *S) {
  if (S->next_reconnect_timeout < S->reconnect_timeout || S->active_outbound_connections) {
    S->next_reconnect_timeout = S->reconnect_timeout;
  }
  S->next_reconnect = precise_now + S->next_reconnect_timeout;
  if (!S->active_outbound_connections && S->next_reconnect_timeout < MAX_RECONNECT_INTERVAL) {
    S->next_reconnect_timeout = S->next_reconnect_timeout * 1.5 + drand48 () * 0.2;
  }
  return S->next_reconnect;
}
