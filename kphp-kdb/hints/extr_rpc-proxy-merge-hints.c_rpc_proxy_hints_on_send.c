
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hints_extra {int sent_limit; int type; int user_id; int sent_op; } ;
struct gather {struct hints_extra* extra; } ;


 int tl_copy_through (int ,int ) ;
 int tl_fetch_unread () ;
 int tl_store_int (int ) ;
 int vkprintf (int,char*,int ) ;

int rpc_proxy_hints_on_send (struct gather *G, int num) {
  struct hints_extra *extra = G->extra;
  tl_store_int (extra->sent_op);
  tl_store_int (extra->user_id);
  tl_store_int (extra->type);
  tl_store_int (extra->sent_limit);
  vkprintf (4, "tl_fetch_unread () = %d\n", tl_fetch_unread ());
  tl_copy_through (tl_fetch_unread (), 0);
  return 0;
}
