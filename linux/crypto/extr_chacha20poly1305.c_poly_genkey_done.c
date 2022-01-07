
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int data; } ;


 int async_done_continue (int ,int,int ) ;
 int poly_init ;

__attribute__((used)) static void poly_genkey_done(struct crypto_async_request *areq, int err)
{
 async_done_continue(areq->data, err, poly_init);
}
