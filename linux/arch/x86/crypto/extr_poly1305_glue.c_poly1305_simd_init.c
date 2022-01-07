
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct poly1305_simd_desc_ctx {int uset; int wset; } ;


 int crypto_poly1305_init (struct shash_desc*) ;
 struct poly1305_simd_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int poly1305_simd_init(struct shash_desc *desc)
{
 struct poly1305_simd_desc_ctx *sctx = shash_desc_ctx(desc);

 sctx->uset = 0;




 return crypto_poly1305_init(desc);
}
