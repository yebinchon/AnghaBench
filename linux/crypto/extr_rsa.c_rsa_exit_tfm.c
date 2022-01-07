
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int dummy; } ;
struct crypto_akcipher {int dummy; } ;


 struct rsa_mpi_key* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int rsa_free_mpi_key (struct rsa_mpi_key*) ;

__attribute__((used)) static void rsa_exit_tfm(struct crypto_akcipher *tfm)
{
 struct rsa_mpi_key *pkey = akcipher_tfm_ctx(tfm);

 rsa_free_mpi_key(pkey);
}
