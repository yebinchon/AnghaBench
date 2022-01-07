
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_async_request {struct ahash_request* data; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;


 int EINPROGRESS ;
 int ahash_notify_einprogress (struct ahash_request*) ;
 int ahash_restore_req (struct ahash_request*,int) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void ahash_op_unaligned_done(struct crypto_async_request *req, int err)
{
 struct ahash_request *areq = req->data;

 if (err == -EINPROGRESS) {
  ahash_notify_einprogress(areq);
  return;
 }
 ahash_restore_req(areq, err);


 areq->base.complete(&areq->base, err);
}
