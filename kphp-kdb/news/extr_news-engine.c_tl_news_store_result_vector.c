
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R ;
 int R_end ;
 int TL_VECTOR ;
 int assert (int) ;
 int tl_store_int (int) ;
 int tl_store_raw_data (void*,int) ;

void tl_news_store_result_vector (int arity) {
  int num = R_end - R;
  assert (!(num % arity));
  tl_store_int (TL_VECTOR);
  tl_store_int (num / arity);
  tl_store_raw_data ( (void *) R, 4 * num);
}
