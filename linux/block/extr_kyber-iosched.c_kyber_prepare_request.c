
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bio {int dummy; } ;


 int rq_set_domain_token (struct request*,int) ;

__attribute__((used)) static void kyber_prepare_request(struct request *rq, struct bio *bio)
{
 rq_set_domain_token(rq, -1);
}
