
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 void* gen_deflate_alloc_ctx (struct crypto_scomp*,int) ;

__attribute__((used)) static void *zlib_deflate_alloc_ctx(struct crypto_scomp *tfm)
{
 return gen_deflate_alloc_ctx(tfm, 1);
}
