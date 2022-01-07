
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_seq_store_time {int type; int value_len; int time; scalar_t__ data; } ;


 int LEV_SEQ_STORE_TIME ;
 int store (int,struct lev_seq_store_time*,int,scalar_t__,int,scalar_t__,int ,int) ;

int store_time (struct lev_seq_store_time *E) {
  int key_len = (E->type - LEV_SEQ_STORE_TIME) & 0xff;
  int mode = ((E->type - LEV_SEQ_STORE_TIME) & 0x300) >> 8;
  return store (sizeof (*E) + key_len * 4 + E->value_len * 4, E, key_len, E->data, E->value_len, E->data + key_len, E->time, mode);
}
