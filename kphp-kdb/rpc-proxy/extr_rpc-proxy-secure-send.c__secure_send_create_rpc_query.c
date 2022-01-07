
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct secure_send_extra {scalar_t__ data_size; int binlog; int data; int timeout; int pid; int binlog_pos; scalar_t__ state; } ;
struct rpc_query {int old_qid; int qid; struct secure_send_extra* extra; } ;
struct lev_query_tx {scalar_t__ data_size; int data; int timeout; int pid; int cluster_id; int old_qid; int qid; } ;
struct TYPE_6__ {int id; int timeout; } ;
struct TYPE_5__ {int remote_pid; } ;
struct TYPE_4__ {scalar_t__ out_pos; } ;


 TYPE_3__* CC ;
 int LEV_QUERY_TX ;
 TYPE_2__* RPCS_DATA (int ) ;
 int TL_OUT_CONN ;
 scalar_t__ TL_OUT_TYPE ;
 struct lev_query_tx* alloc_log_event (int ,scalar_t__,int ) ;
 int assert (int) ;
 int binlog_mode_on ;
 struct rpc_query* default_create_rpc_query (long long) ;
 int flush_cbinlog (int ) ;
 int insert_binlog_pos (int ,int ) ;
 int log_last_pos () ;
 int malloc (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;
 int secure_send_s0 ;
 TYPE_1__ tl ;
 scalar_t__ tl_store_read_back_nondestruct (int ,scalar_t__) ;
 scalar_t__ tl_type_conn ;
 struct secure_send_extra* zmalloc (int) ;

struct rpc_query *_secure_send_create_rpc_query (long long new_qid, int binlog) {
  struct rpc_query *q = default_create_rpc_query (new_qid);
  if (!q) { return q; }
  struct secure_send_extra *E = zmalloc (sizeof (*E));
  E->state = 0;
  E->data_size = tl.out_pos;
  E->data = malloc (E->data_size);
  memset (E->data, 0, E->data_size);
  assert (TL_OUT_TYPE == tl_type_conn);
  E->pid = RPCS_DATA(TL_OUT_CONN)->remote_pid;
  E->timeout = CC->timeout;
  E->binlog = 0;
  assert (tl_store_read_back_nondestruct (E->data, E->data_size) == E->data_size);
  secure_send_s0 ++;





  q->extra = E;
  if (binlog) {
    E->binlog_pos = log_last_pos ();
    insert_binlog_pos (E->binlog_pos, 0);
    struct lev_query_tx *L = alloc_log_event (LEV_QUERY_TX, sizeof (*L) + E->data_size, 0);
    L->qid = q->qid;
    L->old_qid = q->old_qid;
    L->cluster_id = CC->id;
    L->data_size = E->data_size;
    L->pid = E->pid;
    L->timeout = E->timeout;
    memcpy (L->data, E->data, E->data_size);
    E->binlog = 1;
    if (binlog_mode_on & 2) {
      flush_cbinlog (0);
    }
  }
  return q;
}
