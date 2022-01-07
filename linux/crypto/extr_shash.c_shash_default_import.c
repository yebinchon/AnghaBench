
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;


 int crypto_shash_descsize (int ) ;
 int memcpy (int ,void const*,int ) ;
 int shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int shash_default_import(struct shash_desc *desc, const void *in)
{
 memcpy(shash_desc_ctx(desc), in, crypto_shash_descsize(desc->tfm));
 return 0;
}
