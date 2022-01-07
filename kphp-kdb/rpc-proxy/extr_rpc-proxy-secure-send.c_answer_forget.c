
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_secure_receive_answer {struct secure_receive_answer* x; } ;
struct process_id {int dummy; } ;
struct secure_receive_answer {long long qid; int binlog_pos; scalar_t__ h; int answer; struct process_id pid; } ;


 int delete_binlog_pos (int ,int) ;
 int free (int ) ;
 int secure_answer_allocated ;
 int secure_receive_answer_tree ;
 int tl_query_header_delete (scalar_t__) ;
 int tree_delete_secure_receive_answer (int ,struct secure_receive_answer*) ;
 struct tree_secure_receive_answer* tree_lookup_secure_receive_answer (int ,struct secure_receive_answer*) ;
 int zfree (struct secure_receive_answer*,int) ;

void answer_forget (long long qid, struct process_id *pid) {
  struct secure_receive_answer t;
  t.qid = qid;
  t.pid = *pid;
  struct tree_secure_receive_answer *T = tree_lookup_secure_receive_answer (secure_receive_answer_tree, &t);
  if (T) {
    secure_receive_answer_tree = tree_delete_secure_receive_answer (secure_receive_answer_tree, T->x);
    struct secure_receive_answer *A = T->x;
    secure_answer_allocated --;
    free (A->answer);
    if (A->h) {
      tl_query_header_delete (A->h);
    }
    delete_binlog_pos (A->binlog_pos, 1);
    zfree (A, sizeof (*A));
  }
}
