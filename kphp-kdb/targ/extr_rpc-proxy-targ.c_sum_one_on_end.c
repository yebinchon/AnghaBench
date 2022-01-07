
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {scalar_t__ extra; } ;


 long TL_MAYBE_TRUE ;
 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int tl_store_end () ;
 int tl_store_int (long) ;

void sum_one_on_end (struct gather *G) {
  if (merge_init_response (G) >= 0) {
    tl_store_int (TL_MAYBE_TRUE);
    tl_store_int (((long)G->extra) - 1);
    tl_store_end ();
  }
  merge_delete (G);
}
