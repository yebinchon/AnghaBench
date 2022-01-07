
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct carm_host {unsigned int wait_q_prod; unsigned int wait_q_cons; struct request_queue** wait_q; } ;


 unsigned int CARM_MAX_WAIT_Q ;

__attribute__((used)) static inline struct request_queue *carm_pop_q(struct carm_host *host)
{
 unsigned int idx;

 if (host->wait_q_prod == host->wait_q_cons)
  return ((void*)0);

 idx = host->wait_q_cons % CARM_MAX_WAIT_Q;
 host->wait_q_cons++;

 return host->wait_q[idx];
}
