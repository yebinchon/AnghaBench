
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_saved_query {int fail; int attempt; int pid; int qid; int out_type; } ;
struct TYPE_2__ {int attempt_num; int out_qid; } ;


 int * TL_IN_PID ;
 int TL_IN_TYPE ;
 int assert (int *) ;
 TYPE_1__ tl ;
 int tl_default_aio_fail ;
 struct tl_saved_query* zmalloc0 (int) ;

struct tl_saved_query *tl_saved_query_init (void) {
  struct tl_saved_query *q = zmalloc0 (sizeof (struct tl_saved_query));
  q->out_type = TL_IN_TYPE;
  q->qid = tl.out_qid;
  assert (TL_IN_PID);
  q->pid = *TL_IN_PID;
  q->attempt = tl.attempt_num;
  q->fail = tl_default_aio_fail;
  return q;
}
