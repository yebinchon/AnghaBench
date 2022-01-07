
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_LISTS_DELETE_OBJECT ;
 int default_query_diagonal_forward () ;
 int default_tuple_forward_ext (int) ;
 int tl_fetch_int () ;
 int tl_fetch_lookup_int () ;
 int tl_fetch_mark () ;

int lists_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_LISTS_DELETE_OBJECT) {
    return default_query_diagonal_forward ();
  } else {
    tl_fetch_mark ();
    tl_fetch_int ();
    int n = tl_fetch_int ();
    return default_tuple_forward_ext (n);
  }
}
