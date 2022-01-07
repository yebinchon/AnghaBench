
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_id {int dummy; } ;
struct secure_receive_answer {long long qid; int answer_op; int binlog; int answer_len; int binlog_pos; int answer; struct process_id pid; scalar_t__ h; } ;


 int insert_binlog_pos (int ,int) ;
 int log_cur_pos () ;
 int lrand48 () ;
 int malloc (int) ;
 int memcpy (int ,int*,int) ;
 int secure_answer_allocated ;
 int secure_receive_answer_tree ;
 int tree_insert_secure_receive_answer (int ,struct secure_receive_answer*,int ) ;
 struct secure_receive_answer* zmalloc (int) ;

void answer_tx (long long qid, struct process_id *pid, int op, int answer_len, int *answer) {
  struct secure_receive_answer *A = zmalloc (sizeof (*A));
  A->h = 0;
  A->qid = qid;
  A->pid = *pid;
  A->answer_op = op;
  A->binlog = 1;
  A->answer_len = answer_len;
  A->answer = malloc (A->answer_len);
  memcpy (A->answer, answer, answer_len);
  secure_receive_answer_tree = tree_insert_secure_receive_answer (secure_receive_answer_tree, A, lrand48 ());
  secure_answer_allocated ++;
  insert_binlog_pos (log_cur_pos (), 1);
  A->binlog_pos = log_cur_pos ();
}
