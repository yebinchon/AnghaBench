
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 scalar_t__ R_cnt ;
 int assert (int) ;
 int listree_get_pos (int *,int,int) ;
 int listree_get_size (int *) ;
 int prepare_peer_msglist (int,int,int *) ;

int get_peer_msglist_pos (int user_id, int peer_id, int local_id) {
  static listree_t X;
  int S;

  R_cnt = 0;

  int res = prepare_peer_msglist (user_id, peer_id, &X);
  if (res <= 0) {
    return res;
  }

  S = listree_get_size (&X);
  assert (S >= 0);
  if (!S) {
    return 0;
  }

  res = listree_get_pos (&X, local_id, 1) + 1;

  assert (res >= 0 && res <= S);
  return res;
}
