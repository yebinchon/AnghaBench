
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int dummy; } ;


 int crypto_register_alg (struct crypto_alg*) ;
 int des_s390_algs_num ;
 struct crypto_alg** des_s390_algs_ptr ;

__attribute__((used)) static int des_s390_register_alg(struct crypto_alg *alg)
{
 int ret;

 ret = crypto_register_alg(alg);
 if (!ret)
  des_s390_algs_ptr[des_s390_algs_num++] = alg;
 return ret;
}
