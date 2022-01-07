
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int total; } ;
struct aead_request {int cryptlen; } ;


 int skcipher_walk_aead_common (struct skcipher_walk*,struct aead_request*,int) ;

int skcipher_walk_aead(struct skcipher_walk *walk, struct aead_request *req,
         bool atomic)
{
 walk->total = req->cryptlen;

 return skcipher_walk_aead_common(walk, req, atomic);
}
