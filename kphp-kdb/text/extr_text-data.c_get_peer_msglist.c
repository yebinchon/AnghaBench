
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 unsigned int MAX_RES ;
 int R ;
 int RA ;
 int R_cnt ;
 int assert (int) ;
 int listree_get_range (int *,int,int) ;
 int listree_get_range_rev (int *,int,int) ;
 int listree_get_size (int *) ;
 int prepare_peer_msglist (int,int,int *) ;

int get_peer_msglist (int user_id, int peer_id, int from, int to) {
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

  if (!from || !to) {
    return S;
  }
  if (from < 0) {
    from += S;
  } else {
    from--;
  }
  if (to < 0) {
    to += S;
  } else {
    to--;
  }

  if (from <= to) {
    to = to - from + 1;
    if ((unsigned) to > MAX_RES) {
      to = MAX_RES;
    }
    RA = R;
    R_cnt = listree_get_range (&X, from, to);
  } else {
    to = from - to + 1;
    if ((unsigned) to > MAX_RES) {
      to = MAX_RES;
    }
    RA = R;
    R_cnt = listree_get_range_rev (&X, S - 1 - from, to);
  }

  assert (R_cnt >= 0 && R_cnt <= to);

  return S;
}
