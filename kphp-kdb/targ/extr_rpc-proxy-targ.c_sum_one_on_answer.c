
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {void* extra; } ;


 int TL_MAYBE_TRUE ;
 int tl_fetch_int () ;

void sum_one_on_answer (struct gather *G, int num) {
  if (tl_fetch_int () != TL_MAYBE_TRUE) {
    return;
  }
  int x = tl_fetch_int ();
  G->extra = (void *)(x + (long)G->extra);
}
