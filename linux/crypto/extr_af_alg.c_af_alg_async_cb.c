
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct kiocb {int (* ki_complete ) (struct kiocb*,int,int ) ;} ;
struct crypto_async_request {struct af_alg_async_req* data; } ;
struct af_alg_async_req {unsigned int outlen; struct kiocb* iocb; struct sock* sk; } ;


 int af_alg_free_resources (struct af_alg_async_req*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct kiocb*,int,int ) ;

void af_alg_async_cb(struct crypto_async_request *_req, int err)
{
 struct af_alg_async_req *areq = _req->data;
 struct sock *sk = areq->sk;
 struct kiocb *iocb = areq->iocb;
 unsigned int resultlen;


 resultlen = areq->outlen;

 af_alg_free_resources(areq);
 sock_put(sk);

 iocb->ki_complete(iocb, err ? err : resultlen, 0);
}
