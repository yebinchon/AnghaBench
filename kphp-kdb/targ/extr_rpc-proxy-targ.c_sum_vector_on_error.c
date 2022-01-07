
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct targ_extra {int dummy; } ;
struct gather {struct targ_extra* extra; } ;
struct TYPE_2__ {int h; } ;


 TYPE_1__* CQ ;
 scalar_t__ TL_IS_USER_ERROR (int) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int merge_terminate_gather (struct gather*) ;
 int tl_copy_through (int ,int) ;
 int tl_fetch_lookup_int () ;
 int tl_fetch_unread () ;
 int tl_store_end () ;
 int tl_store_header (int ) ;
 int zfree (struct targ_extra*,int) ;

void sum_vector_on_error (struct gather *G, int num) {
  int error_code = tl_fetch_lookup_int ();
  if (TL_IS_USER_ERROR (error_code)) {
    if (merge_init_response (G) >= 0) {
      tl_store_header (CQ->h);
      tl_copy_through (tl_fetch_unread (), 1);
      tl_store_end ();
    }
    struct targ_extra *e = G->extra;
    zfree (e, sizeof (*e));
    merge_terminate_gather (G);
  }
}
