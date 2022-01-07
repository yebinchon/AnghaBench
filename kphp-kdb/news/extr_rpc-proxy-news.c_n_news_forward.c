
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_NNEWS_DELETE_UPDATE ;
 int TL_NNEWS_DELETE_UPDATES ;
 int TL_NNEWS_UNDELETE_UPDATE ;
 int default_firstint_forward () ;
 int default_query_diagonal_forward () ;
 int tl_fetch_lookup_int () ;

int n_news_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_NNEWS_DELETE_UPDATES || op == TL_NNEWS_DELETE_UPDATE || op == TL_NNEWS_UNDELETE_UPDATE) {
    default_query_diagonal_forward ();
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
