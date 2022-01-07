
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int (* update ) (struct ahash_request*) ;} ;
struct ahash_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int ahash_def_finup_done1 ;
 int ahash_def_finup_finish1 (struct ahash_request*,int) ;
 int ahash_save_req (struct ahash_request*,int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int stub1 (struct ahash_request*) ;

__attribute__((used)) static int ahash_def_finup(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 int err;

 err = ahash_save_req(req, ahash_def_finup_done1);
 if (err)
  return err;

 err = tfm->update(req);
 if (err == -EINPROGRESS || err == -EBUSY)
  return err;

 return ahash_def_finup_finish1(req, err);
}
