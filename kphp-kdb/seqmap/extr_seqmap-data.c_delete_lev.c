
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_seq_delete {int type; int data; } ;


 int LEV_SEQ_DELETE ;
 int delete (int,struct lev_seq_delete*,int,int ) ;

int delete_lev (struct lev_seq_delete *E) {
  int key_len = (E->type - LEV_SEQ_DELETE) & 0xff;
  return delete (sizeof (*E) + key_len * 4, E, key_len, E->data);
}
