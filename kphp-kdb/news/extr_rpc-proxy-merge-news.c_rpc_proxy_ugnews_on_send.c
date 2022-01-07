
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_gather_extra {int type_mask; int timestamp; int end_date; } ;
struct gather {struct news_gather_extra* extra; } ;


 int* Q ;
 int* QN ;
 int* Rfirst ;
 int* Rlen ;
 int TL_NEWS_GET_RAW_UPDATES ;
 int assert (int) ;
 int tl_store_int (int) ;

int rpc_proxy_ugnews_on_send (struct gather *G, int num) {
  if (Rlen[num] <= 0) {
    return -1;
  }
  struct news_gather_extra *extra = G->extra;
  tl_store_int (TL_NEWS_GET_RAW_UPDATES);
  tl_store_int (extra->type_mask);
  tl_store_int (extra->timestamp);
  tl_store_int (extra->end_date);
  tl_store_int (Rlen[num]);
  int x = Rfirst[num];
  int i;
  for (i = 0; i < Rlen[num]; i++) {
    assert (x >= 0);
    tl_store_int (Q[x]);
    x = QN[x];
  }
  assert (x == -1);
  return 0;
}
