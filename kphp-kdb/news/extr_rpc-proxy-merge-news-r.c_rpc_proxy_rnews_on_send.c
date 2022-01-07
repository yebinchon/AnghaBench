
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnews_gather_extra {scalar_t__ type_mask; scalar_t__ date; scalar_t__ end_date; scalar_t__ id; scalar_t__ t; scalar_t__ timestamp; } ;
struct gather {struct rnews_gather_extra* extra; } ;


 scalar_t__* Q ;
 int* QN ;
 int R ;
 scalar_t__ R_common_len ;
 int* Rfirst ;
 scalar_t__* Rlen ;
 scalar_t__ TL_NEWS_GET_RAW_UPDATES ;
 int assert (int) ;
 int tl_store_int (scalar_t__) ;
 int tl_store_raw_data (int ,scalar_t__) ;

int rpc_proxy_rnews_on_send (struct gather *G, int num) {
  if (Rlen[num] + R_common_len <= 0 ) {
    return -1;
  }
  struct rnews_gather_extra *extra = G->extra;
  tl_store_int (TL_NEWS_GET_RAW_UPDATES);
  tl_store_int (extra->type_mask);
  tl_store_int (extra->date);
  tl_store_int (extra->end_date);
  tl_store_int (extra->id);
  tl_store_int (extra->t);
  tl_store_int (extra->timestamp);
  tl_store_int (Rlen[num] + R_common_len);
  tl_store_raw_data (R, R_common_len * 4);
  int x = Rfirst[num];
  int i;
  for (i = 0; i < Rlen[num]; i++) {
    assert (x >= 0);
    tl_store_int (Q[2 * x + 0]);
    tl_store_int (Q[2 * x + 1]);
    x = QN[x];
  }
  assert (x == -1);
  return 0;
}
