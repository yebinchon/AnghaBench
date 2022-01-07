
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_WEIGHTS_SET_HALF_LIFE ;
 int default_firstint_forward () ;
 int default_query_diagonal_forward () ;
 int tl_fetch_lookup_int () ;

int weights_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_WEIGHTS_SET_HALF_LIFE) {
    return default_query_diagonal_forward ();
  } else {
    return default_firstint_forward ();
  }
}
