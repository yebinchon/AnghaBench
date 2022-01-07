
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {int* extra; scalar_t__ not_sent_num; scalar_t__ timeouted_num; } ;


 int TL_BOOL_STAT ;
 int free (int*) ;
 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int tl_store_end () ;
 int tl_store_int (int) ;

void rpc_proxy_diagonal_on_end (struct gather *G) {
  int *extra = G->extra;
  if (merge_init_response (G) >= 0) {
    extra[2] += G->timeouted_num + G->not_sent_num;
    tl_store_int (TL_BOOL_STAT);
    tl_store_int (extra[0]);
    tl_store_int (extra[1]);
    tl_store_int (extra[2]);
    tl_store_end ();
  }
  free (extra);
  merge_delete (G);
}
