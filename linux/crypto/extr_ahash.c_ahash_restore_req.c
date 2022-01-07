
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request_priv {int data; int complete; int flags; int result; } ;
struct ahash_request {struct ahash_request_priv* priv; int result; } ;


 int ahash_request_set_callback (struct ahash_request*,int ,int ,int ) ;
 int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int kzfree (struct ahash_request_priv*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ahash_restore_req(struct ahash_request *req, int err)
{
 struct ahash_request_priv *priv = req->priv;

 if (!err)
  memcpy(priv->result, req->result,
         crypto_ahash_digestsize(crypto_ahash_reqtfm(req)));


 req->result = priv->result;

 ahash_request_set_callback(req, priv->flags,
       priv->complete, priv->data);
 req->priv = ((void*)0);


 kzfree(priv);
}
