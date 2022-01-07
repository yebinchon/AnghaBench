
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char const*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 scalar_t__ crypto_shash_descsize (struct crypto_shash*) ;
 struct shash_desc* kmalloc (scalar_t__,int ) ;
 int pr_err (char*,char const*,int) ;

__attribute__((used)) static int alloc_shash(const char *driver, u32 type, u32 mask,
         struct crypto_shash **tfm_ret,
         struct shash_desc **desc_ret)
{
 struct crypto_shash *tfm;
 struct shash_desc *desc;

 tfm = crypto_alloc_shash(driver, type, mask);
 if (IS_ERR(tfm)) {
  if (PTR_ERR(tfm) == -ENOENT) {




   return 0;
  }
  pr_err("alg: hash: failed to allocate shash transform for %s: %ld\n",
         driver, PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }

 desc = kmalloc(sizeof(*desc) + crypto_shash_descsize(tfm), GFP_KERNEL);
 if (!desc) {
  crypto_free_shash(tfm);
  return -ENOMEM;
 }
 desc->tfm = tfm;

 *tfm_ret = tfm;
 *desc_ret = desc;
 return 0;
}
