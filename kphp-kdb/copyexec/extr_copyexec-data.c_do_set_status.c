
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_ino; int st_dev; int result; int creation_time; int pid; int mask; int binlog_pos; } ;
typedef TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int type; int st_ino; int st_dev; int result; int creation_time; int pid; int mask; int binlog_pos; int transaction_id; } ;


 int assert (int ) ;
 TYPE_1__* get_transaction_f (int ,int) ;
 int transaction_change_status (TYPE_1__*,int) ;
 int vkprintf (int,char*,int ,int) ;

void do_set_status (struct lev_copyexec_main_transaction_status *E) {
  int status = E->type & 0xff;
  vkprintf (3, "tr%d set status %d.\n", E->transaction_id, (int) status);
  transaction_t *T = get_transaction_f (E->transaction_id, 1);
  assert (T != ((void*)0));
  transaction_change_status (T, status);
  T->binlog_pos = E->binlog_pos;
  T->mask = E->mask;
  T->pid = E->pid;
  T->creation_time = E->creation_time;
  T->result = E->result;
  T->st_dev = E->st_dev;
  T->st_ino = E->st_ino;
}
