
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {int* extra; } ;


 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int tl_store_end () ;
 int tl_store_int (int) ;
 int tl_store_raw_data (int*,int) ;
 int zfree (int*,int) ;

void sum_tuple_on_end (struct gather *G) {
  int *r = G->extra;
  if (merge_init_response (G) >= 0) {
    tl_store_int (r[1]);
    if (r[2] >= 0) {
      tl_store_int (r[2]);
    }
    tl_store_raw_data (r + 3, r[0] * 4);
    tl_store_end ();
  }
  zfree (r, 4 * r[0] + 12);
  merge_delete (G);
}
