
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; int prev_used; int next_bucket; int next_used; } ;


 int STAT_BUCKET_SIZE ;
 int STAT_MAX_RATE ;
 int STAT_ST ;
 int add_bucket (int,int) ;
 int add_q (int) ;
 int assert (int) ;
 int del_bucket (int) ;
 int idn ;
 TYPE_1__* q_entry ;

void upd_stat_ (int id, int add) {
  if (add != 1 && add != -1) {
    assert (0);
    return;
  }
  if (id < 0) {
    id = -id;
    add = -add;
  }

  assert (1 <= id && id <= idn);

  id = add_q (id);

  id += STAT_ST;
  int old_bucket = (q_entry[id].val + STAT_BUCKET_SIZE - 1) / STAT_BUCKET_SIZE;
  assert (old_bucket < STAT_ST);

  q_entry[id].val += add;
  if (q_entry[id].val > STAT_MAX_RATE) {
    q_entry[id].val = STAT_MAX_RATE;
  }

  if (q_entry[id].val < 0) {
    q_entry[id].val = 0;
  }

  int new_bucket = (q_entry[id].val + STAT_BUCKET_SIZE - 1) / STAT_BUCKET_SIZE;
  assert (new_bucket < STAT_ST);

  if (new_bucket != old_bucket) {
    int p = old_bucket;
    if (old_bucket) {
      del_bucket (id);

      if (old_bucket > new_bucket) {
        p = q_entry[old_bucket].prev_used;
      }

      if (q_entry[old_bucket].next_bucket == old_bucket) {
        p = q_entry[old_bucket].prev_used;
        int t = q_entry[p].next_used = q_entry[old_bucket].next_used;
        q_entry[t].prev_used = p;
      }
    }

    if (new_bucket) {
      if (q_entry[new_bucket].next_bucket == new_bucket) {
        int t = q_entry[new_bucket].next_used = q_entry[p].next_used;
        q_entry[t].prev_used = new_bucket;

        q_entry[p].next_used = new_bucket;
        q_entry[new_bucket].prev_used = p;
      }

      add_bucket (id, new_bucket);
    }
  }
}
