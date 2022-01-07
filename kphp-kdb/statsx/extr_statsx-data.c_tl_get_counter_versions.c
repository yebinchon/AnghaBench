
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* prev; int created_at; } ;


 int TL_MAYBE_FALSE ;
 int TL_MAYBE_TRUE ;
 struct counter* get_counter_f (long long,int ) ;
 int load_counter (long long,int ,int) ;
 int* tl_store_get_ptr (int) ;
 int tl_store_int (int ) ;

int tl_get_counter_versions (long long counter_id) {
  if (load_counter (counter_id, 0, 1) == -2) {
    return -2;
  }
  struct counter *C = get_counter_f (counter_id, 0);
  if (!C) {
    tl_store_int (TL_MAYBE_FALSE);
    return 0;
  }
  tl_store_int (TL_MAYBE_TRUE);
  int *count = tl_store_get_ptr (4);
  *count = 0;
  while (C) {
    tl_store_int (C->created_at);
    (*count) ++;
    C = C->prev;
  }
  return 0;
}
