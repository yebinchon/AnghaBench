
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {int* extra; } ;


 scalar_t__ TL_BOOL_STAT ;
 scalar_t__ tl_fetch_int () ;
 int tl_fetch_unread () ;

void rpc_proxy_diagonal_on_answer (struct gather *G, int num) {
  int *extra = G->extra;
  if (tl_fetch_int () != TL_BOOL_STAT) {
    extra[2] ++;
    return;
  }
  if (tl_fetch_unread () != 12) {
    extra[2] ++;
    return;
  }
  extra[0] += tl_fetch_int ();
  extra[1] += tl_fetch_int ();
  extra[2] += tl_fetch_int ();
}
