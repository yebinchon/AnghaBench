
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_CNEWS_GET_GROUPED_UPDATES ;
 int TL_CNEWS_GET_GROUPED_USER_UPDATES ;
 int TL_CNEWS_GET_RAW_UPDATES ;
 int TL_CNEWS_GET_RAW_USER_UPDATES ;
 int cnews_gather_methods ;
 int cnews_raw_gather_methods ;
 int cnews_raw_user_gather_methods ;
 int cnews_user_gather_methods ;
 int default_tuple_forward (int) ;
 int merge_forward (int *) ;
 int tl_fetch_lookup_int () ;

int c_news_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_CNEWS_GET_GROUPED_UPDATES) {
    merge_forward (&cnews_gather_methods);
    return 0;
  } else if (op == TL_CNEWS_GET_RAW_UPDATES) {
    merge_forward (&cnews_raw_gather_methods);
    return 0;
  } else if (op == TL_CNEWS_GET_GROUPED_USER_UPDATES) {
    merge_forward (&cnews_user_gather_methods);
    return 0;
  } else if (op == TL_CNEWS_GET_RAW_USER_UPDATES) {
    merge_forward (&cnews_raw_user_gather_methods);
    return 0;
  } else {
    return default_tuple_forward (3);
  }
}
