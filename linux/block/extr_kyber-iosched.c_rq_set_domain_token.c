
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** priv; } ;
struct request {TYPE_1__ elv; } ;



__attribute__((used)) static void rq_set_domain_token(struct request *rq, int token)
{
 rq->elv.priv[0] = (void *)(long)token;
}
