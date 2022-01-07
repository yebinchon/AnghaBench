
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_RNEWS_GET_GROUPED_UPDATES ;
 int TL_RNEWS_GET_RAW_UPDATES ;
 int TL_RNEWS_SET_RATE ;
 int default_firstint_forward () ;
 int default_query_diagonal_forward () ;
 int merge_forward (int *) ;
 int rnews_gather_methods ;
 int rnews_raw_gather_methods ;
 int tl_fetch_lookup_int () ;

int r_news_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_RNEWS_SET_RATE) {
    default_query_diagonal_forward ();
    return 0;
  } else if (op == TL_RNEWS_GET_RAW_UPDATES) {
    merge_forward (&rnews_raw_gather_methods);
    return 0;
  } else if (op == TL_RNEWS_GET_GROUPED_UPDATES) {
    merge_forward (&rnews_gather_methods);
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
