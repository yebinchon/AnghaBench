
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;


 int crypto_shash_export (struct shash_desc*,void*) ;
 struct shash_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int hmac_export(struct shash_desc *pdesc, void *out)
{
 struct shash_desc *desc = shash_desc_ctx(pdesc);

 return crypto_shash_export(desc, out);
}
