
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_extra {int sent_limit; int mode; int op; } ;
struct gather {struct search_extra* extra; } ;


 int tl_copy_through (int ,int ) ;
 int tl_fetch_unread () ;
 int tl_store_int (int ) ;
 int vkprintf (int,char*,int ) ;

int rpc_proxy_search_on_send (struct gather *G, int num) {
  struct search_extra *extra = G->extra;
  tl_store_int (extra->op);
  tl_store_int (extra->mode);
  tl_store_int (extra->sent_limit);
  vkprintf (4, "tl_fetch_unread () = %d\n", tl_fetch_unread ());
  tl_copy_through (tl_fetch_unread (), 0);
  return 0;
}
