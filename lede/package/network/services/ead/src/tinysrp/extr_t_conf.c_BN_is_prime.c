
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_is_prime_fasttest (int const*,int,void (*) (int,int,void*),int *,void*,int ) ;

int BN_is_prime(const BIGNUM *a, int checks, void (*callback)(int,int,void *),
 BN_CTX *ctx_passed, void *cb_arg)
 {
 return BN_is_prime_fasttest(a, checks, callback, ctx_passed, cb_arg, 0);
 }
