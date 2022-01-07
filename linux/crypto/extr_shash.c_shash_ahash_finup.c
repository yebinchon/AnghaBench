
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct crypto_hash_walk {int data; } ;
struct ahash_request {int result; } ;


 int crypto_hash_walk_done (struct crypto_hash_walk*,int) ;
 int crypto_hash_walk_first (struct ahash_request*,struct crypto_hash_walk*) ;
 scalar_t__ crypto_hash_walk_last (struct crypto_hash_walk*) ;
 int crypto_shash_final (struct shash_desc*,int ) ;
 int crypto_shash_finup (struct shash_desc*,int ,int,int ) ;
 int crypto_shash_update (struct shash_desc*,int ,int) ;

int shash_ahash_finup(struct ahash_request *req, struct shash_desc *desc)
{
 struct crypto_hash_walk walk;
 int nbytes;

 nbytes = crypto_hash_walk_first(req, &walk);
 if (!nbytes)
  return crypto_shash_final(desc, req->result);

 do {
  nbytes = crypto_hash_walk_last(&walk) ?
    crypto_shash_finup(desc, walk.data, nbytes,
         req->result) :
    crypto_shash_update(desc, walk.data, nbytes);
  nbytes = crypto_hash_walk_done(&walk, nbytes);
 } while (nbytes > 0);

 return nbytes;
}
