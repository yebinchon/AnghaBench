
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_gather_extra {int end_date; int timestamp; int type_mask; } ;
struct gather {struct news_gather_extra* extra; } ;


 int Q_size ;
 int TL_CNEWS_GET_RAW_USER_UPDATES ;
 int tl_store_int (int ) ;

int rpc_proxy_cnews_user_on_send (struct gather *G, int num) {
  struct news_gather_extra *extra = G->extra;
  tl_store_int (TL_CNEWS_GET_RAW_USER_UPDATES);
  tl_store_int (extra->type_mask);;
  tl_store_int (extra->timestamp);
  tl_store_int (extra->end_date);
  tl_store_int (Q_size);
  return 0;
}
