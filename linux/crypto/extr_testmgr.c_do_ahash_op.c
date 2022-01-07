
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;


 int crypto_disable_simd_for_test () ;
 int crypto_reenable_simd_for_test () ;
 int crypto_wait_req (int,struct crypto_wait*) ;

__attribute__((used)) static int do_ahash_op(int (*op)(struct ahash_request *req),
         struct ahash_request *req,
         struct crypto_wait *wait, bool nosimd)
{
 int err;

 if (nosimd)
  crypto_disable_simd_for_test();

 err = op(req);

 if (nosimd)
  crypto_reenable_simd_for_test();

 return crypto_wait_req(err, wait);
}
