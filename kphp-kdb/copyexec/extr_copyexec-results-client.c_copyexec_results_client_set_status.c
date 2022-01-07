
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct results_queue_entry {unsigned int result; int transaction_id; int binlog_pos; } ;
struct lev_copyexec_main_transaction_status {int result; int transaction_id; scalar_t__ type; } ;


 scalar_t__ LEV_COPYEXEC_MAIN_TRANSACTION_STATUS ;
 int log_cur_pos () ;
 struct results_queue_entry* results_queue_push () ;
 int vkprintf (int,char*) ;

int copyexec_results_client_set_status (struct lev_copyexec_main_transaction_status *E) {
  struct results_queue_entry *A = results_queue_push ();
  if (A == ((void*)0)) {
    vkprintf (3, "Results queue full. Stop binlog replaying.\n");
    return -1;
  }
  A->binlog_pos = log_cur_pos ();
  A->result = (((unsigned)(E->type - LEV_COPYEXEC_MAIN_TRANSACTION_STATUS)) << 28) | (E->result & 0x0fffffff);
  A->transaction_id = E->transaction_id;

  return 0;
}
