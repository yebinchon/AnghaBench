
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int NO_ERROR ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;

__attribute__((used)) static int
alloc_shash(struct crypto_shash **tfm, char *tfm_name, int err_alg)
{
 if (!tfm_name[0])
  return NO_ERROR;

 *tfm = crypto_alloc_shash(tfm_name, 0, 0);
 if (IS_ERR(*tfm)) {
  *tfm = ((void*)0);
  return err_alg;
 }

 return NO_ERROR;
}
