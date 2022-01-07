
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_FRIEND_COMMON_FRIENDS ;
 int TL_FRIEND_COMMON_FRIENDS_NUM ;
 int common_friends_gather_methods ;
 int common_friends_num_gather_methods ;
 int default_firstint_forward () ;
 int merge_forward (int *) ;
 int tl_fetch_lookup_int () ;

int common_friends_forward (void) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_FRIEND_COMMON_FRIENDS) {
    merge_forward (&common_friends_gather_methods);
    return 0;
  } else if (op == TL_FRIEND_COMMON_FRIENDS_NUM) {
    merge_forward (&common_friends_num_gather_methods);
    return 0;
  } else {
    return default_firstint_forward ();
  }
}
