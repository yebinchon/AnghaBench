
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secure_receive_answer {int answer_len; char* answer; int binlog; int answer_op; int pid; int qid; int binlog_pos; scalar_t__ h; } ;
struct rpc_query {scalar_t__ start_time; int pid; int old_qid; } ;
struct lev_answer_tx {int answer_len; char* answer; int op; int pid; int qid; } ;


 int LEV_ANSWER_TX ;
 int RPC_FUN_NEXT ;
 int RPC_REQ_ERROR_WRAPPED ;
 int TL_ERROR_QUERY_TIMEOUT ;
 struct lev_answer_tx* alloc_log_event (int ,int,int ) ;
 int assert (int) ;
 int binlog_mode_on ;
 int flush_cbinlog (int ) ;
 int insert_binlog_pos (int ,int ) ;
 int log_last_pos () ;
 int lrand48 () ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ precise_now ;
 int secure_answer_allocated ;
 int secure_receive_answer_tree ;
 int sprintf (char*,char*,scalar_t__) ;
 int strlen (char*) ;
 int tl_fetch_set_error (char*,int) ;
 int tree_insert_secure_receive_answer (int ,struct secure_receive_answer*,int ) ;
 struct secure_receive_answer* zmalloc (int) ;

int _secure_receive_on_alarm (void **IP, void **Data, int binlog) {
  struct rpc_query *q = *Data;
  struct secure_receive_answer *A = zmalloc (sizeof (*A));
  A->h = 0;
  A->qid = q->old_qid;
  A->pid = q->pid;
  A->answer_op = RPC_REQ_ERROR_WRAPPED;
  static char buf [1000];
  sprintf (buf + 1, "Query timeout: working_time = %lf", precise_now - q->start_time);
  tl_fetch_set_error (buf + 1, TL_ERROR_QUERY_TIMEOUT);
  int len = strlen (buf + 1) + 1;
  int pad = ((len + 3) & ~3) - len;
  memset (buf + len, 0, pad);
  buf[0] = len;
  len += pad;
  assert (len % 4 == 0);
  A->answer_len = 4 + len;
  A->answer = malloc (A->answer_len);
  A->binlog = 0;
  *(int *)A->answer = TL_ERROR_QUERY_TIMEOUT;
  memcpy (((char *)(A->answer)) + 4, buf, len);
  secure_receive_answer_tree = tree_insert_secure_receive_answer (secure_receive_answer_tree, A, lrand48 ());
  secure_answer_allocated ++;
  if (binlog) {
    A->binlog_pos = log_last_pos ();
    insert_binlog_pos (A->binlog_pos, 0);
    struct lev_answer_tx *L = alloc_log_event (LEV_ANSWER_TX, sizeof (*L) + A->answer_len, 0);
    L->qid = A->qid;
    L->pid = A->pid;
    L->op = A->answer_op;
    L->answer_len = A->answer_len;
    memcpy (L->answer, A->answer, A->answer_len);
    A->binlog = 1;
    if (binlog_mode_on & 2) {
      flush_cbinlog (0);
    }
  }
  RPC_FUN_NEXT;
}
