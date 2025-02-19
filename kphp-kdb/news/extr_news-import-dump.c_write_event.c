
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_BOOKMARK_INSERT ;
 int MAXUSERS ;
 int USERMOD ;
 int * a ;
 int assert (int) ;
 int * c ;
 int gen_split_param (int,int,int) ;
 int log_split_mod ;
 int * u ;
 int write_int (int,int) ;
 int * z ;

void write_event (int user_id, int type, int owner, int place) {
  int x;
  int t = gen_split_param (type, owner, place);
  if (t > 0) {
    x = t % log_split_mod;
  } else {
    x = (-t) % log_split_mod;
  }
  if (x == 422) {
    z[type] ++;
    z[0] ++;
    if (owner > 0) {
      u[owner / log_split_mod] ++;
    } else {
      u[(-owner) / log_split_mod] ++;
    }
  }
  z[1] ++;

  if (x == 1) {
    assert (user_id / USERMOD + MAXUSERS/2 < MAXUSERS && user_id / USERMOD + MAXUSERS/2 >= 0);
    a[MAXUSERS/2 + user_id / USERMOD] ++;
  }
  c[x]++;
  write_int (x, LEV_BOOKMARK_INSERT + type);
  write_int (x, user_id);
  write_int (x, owner);
  write_int (x, place);
}
