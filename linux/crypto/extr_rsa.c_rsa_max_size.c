
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int n; } ;
struct crypto_akcipher {int dummy; } ;


 struct rsa_mpi_key* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 unsigned int mpi_get_size (int ) ;

__attribute__((used)) static unsigned int rsa_max_size(struct crypto_akcipher *tfm)
{
 struct rsa_mpi_key *pkey = akcipher_tfm_ctx(tfm);

 return mpi_get_size(pkey->n);
}
