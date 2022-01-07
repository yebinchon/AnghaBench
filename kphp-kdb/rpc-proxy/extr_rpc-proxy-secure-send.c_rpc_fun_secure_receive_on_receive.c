
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree_secure_receive_answer {struct secure_receive_answer* x; } ;
struct secure_receive_answer {int answer_op; int answer_len; int answer; scalar_t__ h; int pid; int qid; } ;
struct TYPE_4__ {TYPE_1__* h; int * remote_pid; int in_type; } ;
struct TYPE_3__ {int qid; } ;


 TYPE_2__* CQ ;
 int RPC_FUN_NEXT ;
 int assert (int ) ;
 int secure_receive_answer_tree ;
 int tl_init_store (int ,int *,int ) ;
 int tl_store_end_ext (int ) ;
 int tl_store_header (scalar_t__) ;
 int tl_store_raw_data (int ,int ) ;
 struct tree_secure_receive_answer* tree_lookup_secure_receive_answer (int ,struct secure_receive_answer*) ;

int rpc_fun_secure_receive_on_receive (void **IP, void **Data) {
  struct secure_receive_answer t;
  t.qid = CQ->h->qid;
  t.pid = *CQ->remote_pid;
  struct tree_secure_receive_answer *T = tree_lookup_secure_receive_answer (secure_receive_answer_tree, &t);
  if (!T) {
    RPC_FUN_NEXT;
  } else {
    struct secure_receive_answer *A = T->x;
    assert (A->answer);
    tl_init_store (CQ->in_type, CQ->remote_pid, CQ->h->qid);

    if (A->h) {
      tl_store_header (A->h);
    }
    tl_store_raw_data (A->answer, A->answer_len);
    tl_store_end_ext (A->answer_op);
    return -1;
  }
}
