
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct af_alg_async_req {int areqlen; struct sock* sk; } ;


 int af_alg_free_areq_sgls (struct af_alg_async_req*) ;
 int sock_kfree_s (struct sock*,struct af_alg_async_req*,int ) ;

void af_alg_free_resources(struct af_alg_async_req *areq)
{
 struct sock *sk = areq->sk;

 af_alg_free_areq_sgls(areq);
 sock_kfree_s(sk, areq, areq->areqlen);
}
