
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t prev_bucket; size_t next_bucket; } ;
typedef TYPE_1__ q_info ;


 TYPE_1__* q_entry ;

void del_bucket (int v) {
  q_info *t = &q_entry[v];
  q_entry[t->prev_bucket].next_bucket = t->next_bucket;
  q_entry[t->next_bucket].prev_bucket = t->prev_bucket;
}
