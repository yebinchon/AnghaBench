
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_query_tx {int data_size; int data; int timeout; int cluster_id; int pid; int old_qid; int qid; } ;
struct lev_query_forget {int qid; } ;
struct lev_generic {int type; } ;
struct lev_answer_tx {int answer_len; int answer; int op; int pid; int qid; } ;
struct lev_answer_rx {int qid; } ;
struct lev_answer_forget {int pid; int qid; } ;
 int answer_forget (int ,int *) ;
 int answer_rx (int ) ;
 int answer_tx (int ,int *,int ,int ,int ) ;
 int default_replay_logevent (struct lev_generic*,int) ;
 int fprintf (int ,char*,int,int ) ;
 int log_cur_pos () ;
 int query_forget (int ) ;
 int query_tx (int ,int ,int *,int ,int ,int ,int ) ;
 int stderr ;

int rpc_proxy_replay_logevent (struct lev_generic *E, int size) {
  switch (E->type) {
  case 130:
    return (size < 24 ? -2 : 24);
  case 135:
  case 128:
  case 136:
  case 131:
  case 132:
  case 129:
  case 137:
    return default_replay_logevent (E, size);
  case 134:
    {
      struct lev_query_forget *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      query_forget (L->qid);
      return sizeof (*L);
    }
  case 140:
    {
      struct lev_answer_forget *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      answer_forget (L->qid, &L->pid);
      return sizeof (*L);
    }

  case 133:
    {
      struct lev_query_tx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      if (size < sizeof (*L) + L->data_size) { return -2; }
      query_tx (L->qid, L->old_qid, &L->pid, L->cluster_id, L->timeout, L->data_size, L->data);
      return sizeof (*L) + L->data_size;
    }
  case 138:
    {
      struct lev_answer_tx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      if (size < sizeof (*L) + L->answer_len) { return -2; }
      answer_tx (L->qid, &L->pid, L->op, L->answer_len, L->answer);
      return sizeof (*L) + L->answer_len;
    }
  case 139:
    {
      struct lev_answer_rx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      answer_rx (L->qid);
      return sizeof (*L);
    }
  default:
    fprintf (stderr, "unknown log event type %08x at position %lld\n", E->type, log_cur_pos());
    return -1;
  }
}
