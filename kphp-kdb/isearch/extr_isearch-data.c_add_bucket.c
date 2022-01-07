
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_bucket; int next_bucket; } ;
typedef TYPE_1__ q_info ;


 TYPE_1__* q_entry ;

void add_bucket (int x, int bucket) {
  q_info *entry = &q_entry[x];
  int f = bucket,
      y = q_entry[bucket].prev_bucket;

  entry->next_bucket = f;
  q_entry[f].prev_bucket = x;

  entry->prev_bucket = y;
  q_entry[y].next_bucket = x;
}
