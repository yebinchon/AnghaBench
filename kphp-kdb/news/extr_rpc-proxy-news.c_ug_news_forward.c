
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_NEWS_GET_GROUPED_UPDATES ;
 int TL_NEWS_GET_RAW_UPDATES ;
 int default_firstint_forward () ;
 int merge_forward (int *) ;
 int tl_fetch_lookup_int () ;
 int ugnews_gather_methods ;
 int ugnews_raw_gather_methods ;

int ug_news_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_NEWS_GET_GROUPED_UPDATES) {
    merge_forward (&ugnews_gather_methods);
    return 0;
  } else if (op == TL_NEWS_GET_RAW_UPDATES) {
    merge_forward (&ugnews_raw_gather_methods);
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
