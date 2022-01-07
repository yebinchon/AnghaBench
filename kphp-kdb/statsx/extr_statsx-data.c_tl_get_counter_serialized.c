
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; } ;


 int TL_MAYBE_FALSE ;
 int TL_MAYBE_TRUE ;
 struct counter* get_counter_old (long long,int,int) ;
 int tl_serialize_counter (struct counter*,int) ;
 int tl_store_int (int ) ;

int tl_get_counter_serialized (long long counter_id, int version, int mode) {
  struct counter *C = get_counter_old (counter_id, version, 1);
  if (!C) {
    tl_store_int (TL_MAYBE_FALSE);
    return 0;
  }
  if (C->type == -2) { return -2; }
  tl_store_int (TL_MAYBE_TRUE);
  tl_serialize_counter (C, mode);
  return 0;
}
