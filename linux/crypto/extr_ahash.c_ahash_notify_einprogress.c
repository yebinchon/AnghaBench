
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int data; } ;
struct ahash_request_priv {int (* complete ) (struct crypto_async_request*,int ) ;int data; } ;
struct ahash_request {struct ahash_request_priv* priv; } ;


 int EINPROGRESS ;
 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static void ahash_notify_einprogress(struct ahash_request *req)
{
 struct ahash_request_priv *priv = req->priv;
 struct crypto_async_request oreq;

 oreq.data = priv->data;

 priv->complete(&oreq, -EINPROGRESS);
}
