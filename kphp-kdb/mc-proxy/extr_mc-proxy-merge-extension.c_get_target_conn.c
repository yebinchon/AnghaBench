
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;
struct conn_target {int custom_field; } ;


 scalar_t__ MAX_CLUSTER_SERVERS ;
 int assert (int) ;
 struct connection** get_connection ;
 struct conn_target** get_target ;
 struct connection* get_target_connection (struct conn_target*) ;
 scalar_t__ get_targets ;
 int write_out (int *,char*,int) ;

struct connection *get_target_conn (struct conn_target *S) {
  struct connection *d;
  int x;
  if (S->custom_field) {
    x = S->custom_field;
    if (x < 0) {
      x = -x;
    }
    x--;
    assert ((unsigned) x < (unsigned) get_targets);
    assert (get_target[x] == S);
    d = get_connection[x];
    if (S->custom_field > 0) {
      write_out (&d->Out, " ", 1);
    } else {
      write_out (&d->Out, "get ", 4);
      S->custom_field = - S->custom_field;
    }
  } else {
    d = get_target_connection (S);
    if (!d) {
      return 0;
    }
    assert (get_targets < MAX_CLUSTER_SERVERS);
    x = get_targets++;
    S->custom_field = x+1;
    get_target[x] = S;
    get_connection[x] = d;
    write_out (&d->Out, "get ", 4);
  }
  return d;
}
