
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_extra {int mode; } ;
struct gather {int saved_query_len; struct search_extra* extra; } ;


 int FLAG_RETRY_SEARCH ;
 int merge_save_query_remain (struct gather*) ;
 int vkprintf (int,char*,int ) ;

void rpc_proxy_search_on_send_end (struct gather *G) {
  struct search_extra *extra = G->extra;
  if (extra->mode & FLAG_RETRY_SEARCH) {
    merge_save_query_remain (G);
    vkprintf (3, "saved_query_len = %d\n", G->saved_query_len);
  }
}
