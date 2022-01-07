
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;


 int sha224_init (int ) ;
 int shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crypto_sha224_init(struct shash_desc *desc)
{
 return sha224_init(shash_desc_ctx(desc));
}
