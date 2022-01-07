
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_HINTS_DELETE_OBJECT_GLOBAL ;
 int TL_HINTS_SET_TEXT_GLOBAL ;
 int TL_HINTS_SET_TYPE_GLOBAL ;
 int TL_RATING_DELETE_OBJECT_GLOBAL ;
 int TL_RATING_SET_TYPE_GLOBAL ;
 int default_firstint_forward () ;
 int default_query_diagonal_forward () ;
 int tl_fetch_lookup_int () ;

int hints_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_HINTS_SET_TEXT_GLOBAL ||
      op == TL_HINTS_SET_TYPE_GLOBAL ||
      op == TL_HINTS_DELETE_OBJECT_GLOBAL ||
      op == TL_RATING_SET_TYPE_GLOBAL ||
      op == TL_RATING_DELETE_OBJECT_GLOBAL) {
    default_query_diagonal_forward ();
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
