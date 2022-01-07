
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** priv; } ;
struct request {TYPE_1__ elv; } ;
struct bio {int dummy; } ;



__attribute__((used)) static void bfq_prepare_request(struct request *rq, struct bio *bio)
{





 rq->elv.priv[0] = rq->elv.priv[1] = ((void*)0);
}
