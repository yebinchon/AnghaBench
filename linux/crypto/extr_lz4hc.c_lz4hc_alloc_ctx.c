
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int LZ4HC_MEM_COMPRESS ;
 void* vmalloc (int ) ;

__attribute__((used)) static void *lz4hc_alloc_ctx(struct crypto_scomp *tfm)
{
 void *ctx;

 ctx = vmalloc(LZ4HC_MEM_COMPRESS);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 return ctx;
}
