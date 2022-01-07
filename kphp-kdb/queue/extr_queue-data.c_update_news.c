
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int keys_cnt; int name; } ;
typedef TYPE_1__ queue ;
struct TYPE_8__ {int timeout; int * prev_time; int next_time; int * prev_st; int st; TYPE_1__* q; scalar_t__ lock; } ;
typedef TYPE_2__ qkey ;


 int dbg (char*,int ,TYPE_2__*) ;
 int engine_id ;
 int qkey_fix_timeout (TYPE_2__*) ;
 TYPE_2__* qkey_get (int ,int) ;

void update_news (queue *q) {
  qkey *mk = qkey_get (q->name, 2);

  dbg ("update news [%s] mk = %p\n", q->name, mk);

  if (mk->q == ((void*)0)) {
    mk->q = q;
    mk->lock = 0;
    mk->q->keys_cnt++;
    mk->st = mk->prev_st = ((void*)0);




    mk->timeout = 20 * (engine_id % 2 + 1);

    mk->next_time = mk->prev_time = ((void*)0);
  }
  qkey_fix_timeout (mk);
}
