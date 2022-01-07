
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_wait {int err; int completion; } ;
struct crypto_async_request {struct crypto_wait* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

void crypto_req_done(struct crypto_async_request *req, int err)
{
 struct crypto_wait *wait = req->data;

 if (err == -EINPROGRESS)
  return;

 wait->err = err;
 complete(&wait->completion);
}
