
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SW842_MEM_COMPRESS ;
 void* kmalloc (int ,int ) ;

__attribute__((used)) static void *crypto842_alloc_ctx(struct crypto_scomp *tfm)
{
 void *ctx;

 ctx = kmalloc(SW842_MEM_COMPRESS, GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 return ctx;
}
