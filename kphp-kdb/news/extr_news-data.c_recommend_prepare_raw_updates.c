
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_mark_t ;


 int dups_users_removed_from_urlist ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int forbidden_owners_hashset ;
 int hashset_int_init (int *,int) ;
 int hashset_int_insert (int *,int) ;
 int mandatory_owners_hashset ;
 int memcpy (int*,int*,int) ;
 int now ;
 int qsort (int*,int,int,int ) ;
 int recommend_cmp_pair1 ;
 int recommend_cmp_pair2 ;
 int recommend_finish_raw_updates (int) ;
 int recommend_init_raw_updates () ;
 int recommend_process_raw_updates (int,int,int,int,int,int,int const) ;

int recommend_prepare_raw_updates (int *Q, int QL, int mask, int st_time, int end_time, int excluded_user_id, int timestamp, int T) {
  int i, mandatory_owners = 0, forbidden_owners = 1;
  dyn_mark_t mrk;
  dyn_mark (mrk);
  for (i = 0; i < QL; i++) {
    if (Q[(i<<1)+1] == -2) {
      mandatory_owners++;
    } else if (Q[(i<<1)+1] == -1) {
      forbidden_owners++;
    }
  }
  hashset_int_init (&mandatory_owners_hashset, mandatory_owners);
  hashset_int_init (&forbidden_owners_hashset, forbidden_owners);
  for (i = 0; i < QL; ) {
    if (Q[(i<<1)+1] == -2) {
      hashset_int_insert (&mandatory_owners_hashset, Q[i<<1]);
      QL--;
      if (i != QL) {
        memcpy (Q + (i<<1), Q + (QL<<1), 8);
      }
      continue;
    } else if (Q[(i<<1)+1] == -1) {
      hashset_int_insert (&forbidden_owners_hashset, Q[i<<1]);
      QL--;
      if (i != QL) {
        memcpy (Q + (i<<1), Q + (QL<<1), 8);
      }
      continue;
    }
    i++;
  }
  hashset_int_insert (&forbidden_owners_hashset, excluded_user_id);


  int m = 0;
  qsort (Q, QL, 8, recommend_cmp_pair1);
  for (i = 1; i < QL; i++) {
    if (Q[2*i] != Q[2*m]) {
      ++m;
      Q[2*m] = Q[2*i];
      Q[2*m+1] = Q[2*i+1];
    }
  }
  m++;
  dups_users_removed_from_urlist += QL - m;
  QL = m;

  qsort (Q, QL, 8, recommend_cmp_pair2);

  const int min_item_creation_time = now - 30 * T;
  recommend_init_raw_updates ();
  for (i = 0; i < QL; i++) {
    recommend_process_raw_updates (Q[(i<<1)], Q[(i<<1)+1], mask, st_time, end_time, timestamp, min_item_creation_time);
  }
  int res = recommend_finish_raw_updates (T);
  dyn_release (mrk);
  return res;
}
