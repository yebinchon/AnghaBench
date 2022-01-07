
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;


 int crypto_shash_ctx_aligned (int ) ;
 int hmac_import (struct shash_desc*,int ) ;

__attribute__((used)) static int hmac_init(struct shash_desc *pdesc)
{
 return hmac_import(pdesc, crypto_shash_ctx_aligned(pdesc->tfm));
}
