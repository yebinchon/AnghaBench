
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_PHOTO_SET_VOLUME_SERVER ;
 int default_firstint_forward () ;
 int default_query_diagonal_forward () ;
 int tl_fetch_lookup_int () ;

int photo_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_PHOTO_SET_VOLUME_SERVER) {
    default_query_diagonal_forward ();
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
