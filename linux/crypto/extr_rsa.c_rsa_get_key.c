
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int dummy; } ;
struct crypto_akcipher {int dummy; } ;


 struct rsa_mpi_key* akcipher_tfm_ctx (struct crypto_akcipher*) ;

__attribute__((used)) static inline struct rsa_mpi_key *rsa_get_key(struct crypto_akcipher *tfm)
{
 return akcipher_tfm_ctx(tfm);
}
