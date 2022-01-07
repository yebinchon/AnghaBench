
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_alg {scalar_t__ digestsize; } ;
struct TYPE_2__ {scalar_t__ cia_min_keysize; scalar_t__ cia_max_keysize; } ;
struct crypto_alg {int cra_blocksize; TYPE_1__ cra_cipher; } ;


 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 scalar_t__ IS_ERR (struct crypto_alg*) ;
 struct crypto_alg* crypto_alg_mod_lookup (char const*,int ,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;
 scalar_t__ crypto_shash_alg_has_setkey (struct shash_alg*) ;

__attribute__((used)) static bool essiv_supported_algorithms(const char *essiv_cipher_name,
           struct shash_alg *hash_alg,
           int ivsize)
{
 struct crypto_alg *alg;
 bool ret = 0;

 alg = crypto_alg_mod_lookup(essiv_cipher_name,
        CRYPTO_ALG_TYPE_CIPHER,
        CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(alg))
  return 0;

 if (hash_alg->digestsize < alg->cra_cipher.cia_min_keysize ||
     hash_alg->digestsize > alg->cra_cipher.cia_max_keysize)
  goto out;

 if (ivsize != alg->cra_blocksize)
  goto out;

 if (crypto_shash_alg_has_setkey(hash_alg))
  goto out;

 ret = 1;

out:
 crypto_mod_put(alg);
 return ret;
}
