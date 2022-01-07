
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_delete_counter64 {long long cnt_id; } ;
struct lev_delete_counter {long long cnt_id; } ;


 int LEV_STATS_DELETE_COUNTER ;
 int LEV_STATS_DELETE_COUNTER_64 ;
 void* alloc_log_event (int ,int,long long) ;
 int get_counter_f (long long,int) ;
 int* index_deleted ;
 int index_get_idx (long long) ;
 int index_size ;

int delete_counter (long long counter_id, int replay) {
  if (!replay) {
    if (counter_id == (int)counter_id) {
      struct lev_delete_counter *LV = alloc_log_event (LEV_STATS_DELETE_COUNTER, sizeof (struct lev_delete_counter), counter_id);
      LV->cnt_id = counter_id;
    } else {
      struct lev_delete_counter64 *LV = alloc_log_event (LEV_STATS_DELETE_COUNTER_64, sizeof (struct lev_delete_counter64), counter_id);
      LV->cnt_id = counter_id;
    }
  }
  get_counter_f (counter_id, -1);
  int l = index_get_idx (counter_id);
  if (l < index_size) {
    index_deleted[l] = 1;
  }
  return 1;
}
