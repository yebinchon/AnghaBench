
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct scatterlist {unsigned int offset; int length; } ;
struct ahash_request {unsigned int nbytes; int result; struct scatterlist* src; } ;


 scalar_t__ PAGE_SIZE ;
 int crypto_shash_digest (struct shash_desc*,void*,unsigned int,int ) ;
 scalar_t__ crypto_shash_init (struct shash_desc*) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 unsigned int min (int ,unsigned int) ;
 int sg_page (struct scatterlist*) ;
 int shash_ahash_finup (struct ahash_request*,struct shash_desc*) ;

int shash_ahash_digest(struct ahash_request *req, struct shash_desc *desc)
{
 unsigned int nbytes = req->nbytes;
 struct scatterlist *sg;
 unsigned int offset;
 int err;

 if (nbytes &&
     (sg = req->src, offset = sg->offset,
      nbytes <= min(sg->length, ((unsigned int)(PAGE_SIZE)) - offset))) {
  void *data;

  data = kmap_atomic(sg_page(sg));
  err = crypto_shash_digest(desc, data + offset, nbytes,
       req->result);
  kunmap_atomic(data);
 } else
  err = crypto_shash_init(desc) ?:
        shash_ahash_finup(req, desc);

 return err;
}
