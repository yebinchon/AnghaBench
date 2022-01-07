
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* priv; } ;
struct request {TYPE_1__ elv; } ;



__attribute__((used)) static int rq_get_domain_token(struct request *rq)
{
 return (long)rq->elv.priv[0];
}
