
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sm_sendq {int dummy; } ;
typedef TYPE_1__* sm_sendq_t ;
struct TYPE_5__ {struct TYPE_5__* begin; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void sm_sendq_free(sm_sendq_t sendq) {
  if (sendq) {
    free(sendq->begin);
    memset(sendq, 0, sizeof(struct sm_sendq));
    free(sendq);
  }
}
