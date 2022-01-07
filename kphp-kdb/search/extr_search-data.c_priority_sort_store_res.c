
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 scalar_t__ Q_skip_mismatch_words_if_complete_case_found ;
 int clear_res () ;
 int store_res (int *,int) ;

__attribute__((used)) static void priority_sort_store_res (item_t *I, int p, int *found) {
  if (Q_skip_mismatch_words_if_complete_case_found) {
    if (p >= 6) {
      if (!(*found)) {
        *found = 1;
        clear_res ();
      }
      store_res (I, p);
    } else {
      if (!(*found)) {
        store_res (I, p);
      }
    }
  } else {
    store_res (I, p);
  }
}
